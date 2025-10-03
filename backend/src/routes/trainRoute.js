import express from "express";
import { trainController } from "../controllers/trainController.js";

const trainRouter = express.Router();

trainRouter.get(
  "/train",
  trainController
);

export default trainRouter;
