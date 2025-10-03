import express from "express";
import { trainSeatController } from "../controllers/trainSeatController.js";

const trainSeatRouter = express.Router();

trainSeatRouter.get(
  "/train/seat",
  trainSeatController
);

export default trainSeatRouter;
