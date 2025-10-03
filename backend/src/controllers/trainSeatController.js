import { trainSeat } from "../repositories/trainSeatRepository.js";

export const trainSeatController = async (req, res) => {
  try {
    const { plane_train, local_train, nonlocal_train, starting_city, destination_city } = req.query;
    const result = await trainSeat(
      plane_train,
      local_train,
      nonlocal_train,
      starting_city,
      destination_city,
    );

    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};
