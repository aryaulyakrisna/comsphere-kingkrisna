import { trainSeat, trainSeatCity } from "../repositories/trainSeatRepository.js";

export const trainSeatController = async (req, res) => {
  try {
    const { plane_train, local_train, nonlocal_train, start_stat_name, finish_stat_name } = req.query;
    const result = await trainSeat(
      plane_train,
      local_train,
      nonlocal_train,
      start_stat_name,
      finish_stat_name,
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

export const trainSeatCityController = async (req, res) => {
  try {
    const result = await trainSeatCity();
    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};  