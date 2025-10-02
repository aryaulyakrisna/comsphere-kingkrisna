import { line } from "../repositories/lineRepository.js";

export const lineController = async (req, res) => {
  try {
    const { cl, lrt } = req.query;
    const result = await line(
      cl,
      lrt,
    );

    res.status(200).json({
      message: "Data sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};
