import { body } from "express-validator";

export const chatRules = [
  body("user_id").trim().notEmpty().withMessage("user_id is required"),
  body("chat").trim().notEmpty().withMessage("chat is required"),
  body("chat_from").trim().notEmpty().withMessage("chat_from is required").isIn(["bot", "user"]),
];

