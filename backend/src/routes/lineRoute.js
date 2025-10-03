import express from "express";
import { lineController } from "../controllers/lineController.js";

const lineRouter = express.Router();

lineRouter.get(
  "/line",
  lineController
);

export default lineRouter;
