import express from "express";
import validator from "../middlewares/validatorMiddleware.js";
import { chatRules } from "../rules/chatRule.js";
import { getChatController, postChatController } from "../controllers/chatController.js";
import authMiddleware from "../middlewares/authMiddleware.js";

const chatRouter = express.Router();

chatRouter.get("/chat", authMiddleware,getChatController);
chatRouter.post("/chat", chatRules, validator, authMiddleware, postChatController);

export default chatRouter;
