import { train } from "../repositories/trainRepository.js";

export const trainController = async (req, res) => {
  try {
    const { cl, lrt, plane_train, local_train, nonlocal_train, cl_line_code, lrt_line_code } = req.query;
    const result = await train(
      cl,
      lrt,
      plane_train,
      local_train,
      nonlocal_train,
      cl_line_code,
      lrt_line_code
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
