import { tripHistory } from "../repositories/tripHistoryRepository.js";

export const tripHistoryController = async (req, res) => {
  try {
    const { user_id } = req.query;
    const result = await tripHistory(user_id);

    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};
