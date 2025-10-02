import express from "express";
import authMiddleware from "../middlewares/authMiddleware.js";
import { trainController } from "../controllers/trainController.js";

const trainRouter = express.Router();

trainRouter.get(
  "/train",
  authMiddleware,
  trainController
);

export default trainRouter;
