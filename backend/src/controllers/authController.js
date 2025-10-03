import { login, me, register, verifyQuestion} from "../repositories/authRepository.js";

export const loginController = async (req, res) => {
  try {
    const { username, password } = req.body;
    const data = await login(username, password);

    res.status(200).json({
      message: "Successfully",
      data: data,
    });
    
  } catch (err) {
    const ERROR_MESSAGE = ["Wrong credentials"];

    if (ERROR_MESSAGE.includes(err.message))
      res.status(400).json({ error: err.message });
    else {
      console.error({ error: err });
      res.status(500).json({ error: "Internal server error" });
    }
  }
};

export const verifyAnswerController = async (req, res) => {
  try {
    const { user_id, question, answer } = req.body;
    const data = await verifyQuestion(user_id, question, answer);

    res.status(200).json({
      message: "Successfully login",
      data: data,
    });

  } catch (err) {
    const ERROR_MESSAGE = ["Failed to verify OTP answer", "Wrong answer"];

    if (ERROR_MESSAGE.includes(err.message))
      res.status(400).json({ error: err.message });
    else {
      console.error({ error: err });
      res.status(500).json({ error: "Internal server error" });
    }
  }
};

export const meController = async (req, res) => {
  try {
    const {user_id, username } = req.user;

    const isAuth = await me(user_id, username);

    res.status(200).json({
      message: "Authed successfully",
      data: {
        isAuth,
      },
    });
  } catch (err) {
    const ERROR_MESSAGE = ["User not found"];

    if (ERROR_MESSAGE.includes(err.message))
      res.status(400).json({ error: err.message });
    else {
      console.error({ error: err });
      res.status(500).json({ error: "Internal server error" });
    }
  }
};

export const registerController = async (req, res) => {
  try {
    const { username, email, password } = req.body;
    const insertId = await register(username, email, password);

    res.status(200).json({
      message: "Succesfully changed password",
      data: {
        insertId: insertId,
      },
    });
  } catch (err) {
    const ERROR_MESSAGE = [
      "Username already exist, try a new one",
      "Email already exist, try a new one",
    ];

    if (ERROR_MESSAGE.includes(err.message)) {
      res.status(409).json({ error: err.message });
    } else {
      console.error({ error: err });
      res.status(500).json({ error: "Internal server error" });
    }
  }
};
