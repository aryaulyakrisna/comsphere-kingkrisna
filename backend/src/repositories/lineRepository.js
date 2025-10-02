import pool from "../config/config.js";

export const line = async (
  cl,
  lrt,
) => {
  let res = {};
  if (cl) {
    const [existingClLines] = await pool.query(
      "SELECT * FROM t_cl_line",
    );

    res.cl_lines = existingClLines;
  }

  if (lrt) {
    const [existingLrtLines] = await pool.query(
      "SELECT * FROM t_lrt_line",
    );

    res.lrt_lines = existingLrtLines;
  }

  return res
}