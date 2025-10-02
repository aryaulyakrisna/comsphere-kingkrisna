import express from "express";
import authMiddleware from "../middlewares/authMiddleware.js";
import validator from "../middlewares/validatorMiddleware.js";
import {
  loginRules,
  registerRules,
} from "../rules/authRule.js";
import {
  loginController,
  meController,
  registerController,
} from "../controllers/authController.js";

const authRouter = express.Router();

authRouter.post("/auth", loginRules, validator, loginController);
authRouter.get("/auth", authMiddleware, meController);
authRouter.post("/auth/register", registerRules, validator, registerController);

export default authRouter;
