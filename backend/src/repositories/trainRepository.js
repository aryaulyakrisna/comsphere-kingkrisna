import pool from "../config/config.js";

export const train = async (
  cl,
  lrt,
  plane_train,
  local_train,
  nonlocal_train,
  cl_line_code,
  lrt_line_code
) => {
  let res = {};

  if (lrt) {
    if (lrt_line_code) {
      const [existingLrt] = await pool.query(
        "SELECT * FROM t_train WHERE train_type = 'lrt' AND lrt_line_code = ?",
        [lrt_line_code]
      );

      res.lrt = existingLrt;
    } else {
      const [existingLrt] = await pool.query(
        "SELECT * FROM t_train WHERE train_type = 'lrt'"
      );

      res.lrt = existingLrt;
    }
  }

  if (cl) {
    if (cl_line_code) {
      const [existingCl] = await pool.query(
        "SELECT * FROM t_train WHERE train_type = 'cl' AND cl_line_code = ?",
        [cl_line_code]
      );

      res.cl = existingCl;
    } else {
      const [existingCl] = await pool.query(
        "SELECT * FROM t_train WHERE train_type = 'cl'"
      );

      res.cl = existingCl;
    }
  }

  if (plane_train) {
    const [existingPlane] = await pool.query(
      "SELECT * FROM t_train WHERE train_type = 'plane'"
    );

    res.plane = existingPlane;
  }

  if (local_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_train WHERE train_type = 'local'"
    );

    res.local = existingLocal;
  }

  if (nonlocal_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_train WHERE train_type = 'nonlocal'"
    );

    res.local = existingLocal;
  }

  return res;
};
