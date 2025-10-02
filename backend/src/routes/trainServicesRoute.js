import express from "express";
import authMiddleware from "../middlewares/authMiddleware.js";
import { trainServicesController } from "../controllers/trainServicesController.js";

const trainRouter = express.Router();

trainRouter.get(
  "/train-services",
  authMiddleware,
  trainServicesController
);

export default trainRouter;
