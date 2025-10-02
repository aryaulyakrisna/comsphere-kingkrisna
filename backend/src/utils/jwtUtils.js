import jwt from "jsonwebtoken";
import configureEnv from "./configureEnv.js";

configureEnv();

const JWT_KEY = process.env.JWT_KEY || "ZERO_CLUE";

export const generateToken = (payload, expiredIn = "1d") => {
  /*
    parameter:
      - payload (obj => {id: int, username: string})
      - expiredIn (string)

    return:
      - token
  */

  return jwt.sign(payload, JWT_KEY, { expiresIn: expiredIn });
}

export const verifyToken = (token) => {
  /*
    parameter: 
      - token (string => jwt)

    return:
      - jwt.verify (obj => payload)
      - null (jika jwt.varify error karena token tidak valid atau expired)
  */

  try {
    return jwt.verify(token, JWT_KEY);
  } catch (err) {
    return null;
  }
}
