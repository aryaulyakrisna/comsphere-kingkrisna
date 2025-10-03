import express from "express";
import { seatController } from "../controllers/seatController.js";

const seatRouter = express.Router();

seatRouter.get(
  "/seat",
  seatController
);

export default seatRouter;
