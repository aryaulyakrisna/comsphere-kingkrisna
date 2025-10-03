import express from "express";
import { trainSeatController,trainSeatCityController } from "../controllers/trainSeatController.js";

const trainSeatRouter = express.Router();

trainSeatRouter.get(
  "/train/seat",
  trainSeatController
);

trainSeatRouter.get(
  "/train/seat/get-city",
  trainSeatCityController
)

export default trainSeatRouter;
