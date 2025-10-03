import express from "express";
import validator from "../middlewares/validatorMiddleware.js";
import { chatRules } from "../rules/chatRule.js";
import { getChatController, postChatController } from "../controllers/chatController.js";

const chatRouter = express.Router();

chatRouter.get("/chat", getChatController);
chatRouter.post("/chat", chatRules, validator, postChatController);

export default chatRouter;
