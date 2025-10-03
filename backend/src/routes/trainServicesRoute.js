import express from "express";
import { trainServicesController } from "../controllers/trainServicesController.js";

const trainRouter = express.Router();

trainRouter.get(
  "/train-services",
  trainServicesController
);

export default trainRouter;
