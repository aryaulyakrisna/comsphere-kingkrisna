import express from "express";
import authMiddleware from "../middlewares/authMiddleware.js";
import { lineController } from "../controllers/lineController.js";

const lineRouter = express.Router();

lineRouter.get(
  "/line",
  authMiddleware,
  lineController
);

export default lineRouter;
