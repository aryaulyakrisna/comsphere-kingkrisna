import { body } from "express-validator";

export const loginRules = [
  body("username").trim().notEmpty().withMessage("username is required"),
  body("password").trim().notEmpty().withMessage("password is required"),
];

export const registerRules = [
  body("username").trim().notEmpty().withMessage("username is required"),
  body("email").trim().notEmpty().withMessage("email is required").isEmail().withMessage("email must be a valid email address"),
  body("password").trim().notEmpty().withMessage("password is required"),
];

