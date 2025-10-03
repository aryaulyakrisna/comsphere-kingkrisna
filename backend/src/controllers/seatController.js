import { seat } from "../repositories/seatRepository.js";

export const seatController = async (req, res) => {
  try {
    const { status, train_code, amountAsc } = req.query;
    const result = await seat(status, train_code, amountAsc);

    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};
