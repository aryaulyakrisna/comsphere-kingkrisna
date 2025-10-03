import bcrypt from "bcrypt";
import pool from "../config/config.js";
import { generateToken } from "../utils/jwtUtils.js";
import configureEnv from "../utils/configureEnv.js";

configureEnv();

export const login = async (username, password) => {
  /*
    return:
      - generateToken (string => token jwt)
    
    error.message: ["User not found", "Wrong credentials"]
  */

  // Ambil user
  const [existingUser] = await pool.query(
    "SELECT * FROM t_user WHERE username = ?",
    [username]
  );

  // Bandingkan password
  const realPassword = existingUser[0].password;
  const isMatch = await bcrypt.compare(password, realPassword);
  if (!isMatch) throw new Error("Wrong credentials");

  const [existingTripHistory] = await pool.query(
    "SELECT * FROM t_trip_history WHERE user_id = ?",
    [existingUser[0].user_id]
  );

  if (existingTripHistory.length === 0) {
    const payload = {
      user_id,
    };

    return generateToken(payload, "1d");
  }

  const otpResponse = await fetch(
    process.env.MICROSERVICES_URL + "/otp/get-question",
    {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ user_id: existingUser[0].user_id }),
    }
  );

  // Cek apakah request OTP berhasil
  if (!otpResponse.ok) {
    throw new Error("Failed to fetch OTP question");
  }

  // const payload = {
  //   user_id: existingUser[0].user_id,
  //   username: existingUser[0].username,
  // };

  // return generateToken(payload, "1d"); // return token

  const otpData = await otpResponse.json();
  const question = otpData.question;

  // Simpan pertanyaan ke tabel t_otp
  await pool.query("INSERT INTO t_otp (user_id, question) VALUES (?, ?)", [
    existingUser[0].user_id,
    question,
  ]);

  return {
    user_id: existingUser[0].user_id,
    question,
  };
};

export const verifyQuestion = async (user_id, answer) => {
  try {
    const question = pool.query(
      "SELECT question FROM t_otp WHERE user_id = ?",
      [user_id]
    );

    const otpResponse = await fetch(
      process.env.MICROSERVICES_URL + "/otp/verify-answer",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ user_id, question, answer }),
      }
    );

    if (!otpResponse.ok) {
      throw new Error("Failed to verify OTP answer");
    }

    const otpData = await otpResponse.json();

    if (!otpData.response) {
      throw new Error("Wrong answer");
    } else {
      pool.query("DELETE FROM t_otp WHERE user_id = ?", [user_id]);
    }

    const payload = {
      user_id,
    };

    return generateToken(payload, "1d");
  } catch (error) {
    if (error.message === "Wrong answer") {
      throw error;
    }
    throw new Error("Wrong answer");
  }
};

export const me = async (user_id, username) => {
  /*
    return:
      - generateToken (string => token jwt)
    
    error.message: ["User not found", "Wrong credentials"]
  */

  // Ambil user
  const [existingUser] = await pool.query(
    "SELECT user_id FROM t_user WHERE user_id = ? AND username = ?",
    [user_id, username]
  );

  if (existingUser.length === 0) throw new Error("User not found");

  return true;
};

export const register = async (username, email, password) => {
  const [existingUsername] = await pool.query(
    "SELECT username FROM t_user WHERE username = ?",
    [username]
  );

  if (existingUsername.length < 0) {
    throw new Error("Username already exist, try a new one");
  }

  const [existingEmail] = await pool.query(
    "SELECT email FROM t_user WHERE email = ?",
    [email]
  );

  if (existingEmail.length < 0) {
    throw new Error("Email already exist, try a new one");
  }

  const hashedPassword = await bcrypt.hash(password, 10);

  const [result] = await pool.query(
    "INSERT INTO t_user (username, email, password) VALUES (?, ?, ?)",
    [username, email, hashedPassword]
  );

  return result.insertId;
};
