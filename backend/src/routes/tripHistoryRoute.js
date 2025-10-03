import express from "express";
import { tripHistoryController } from "../controllers/tripHistoryController.js";
import authMiddleware from "../middlewares/authMiddleware.js";

const tripHistoryRouter = express.Router();

tripHistoryRouter.get(
  "/trip",
  tripHistoryController,
  authMiddleware
);

export default tripHistoryRouter;
