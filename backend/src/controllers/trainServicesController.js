import { trainServices } from "../repositories/trainServicesRepository.js";

export const trainServicesController = async (req, res) => {
  try {
    const {
      cl,
      lrt,
      plane_train,
      local_train,
      nonlocal_train,
      cl_line_code,
      lrt_line_code,
      city,
      island,
    } = req.query;
    const result = await trainServices(
      cl,
      lrt,
      plane_train,
      local_train,
      nonlocal_train,
      cl_line_code,
      lrt_line_code,
      city,
      island
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
