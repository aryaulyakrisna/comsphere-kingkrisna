import pool from "../config/config.js";

export const trainServices = async (
  cl,
  lrt,
  plane_train,
  local_train,
  nonlocal_train,
  cl_line_code,
  lrt_line_code,
  city,
  island
) => {
  let res = {};
  if (cl) {
    const [existingCl] = await pool.query(
      "SELECT * FROM t_cl WHERE cl_line_code = ?",
      [cl_line_code]
    );

    res.cl = existingCl;
  }

  if (lrt) {
    const [existingLrt] = await pool.query(
      "SELECT * FROM t_lrt WHERE lrt_line_code = ?",
      [lrt_line_code]
    );

    res.lrt = existingLrt;
  }

  if (plane_train) {
    const [existingPlane] = await pool.query(
      "SELECT * FROM t_plane WHERE city = ? OR island = ?",
      [city, island]
    );

    res.plane = existingPlane;
  }

  if (local_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_local WHERE city = ? OR island = ?",
      [city, island]
    );

    res.local = existingLocal;
  }

  if (nonlocal_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_nonlocal WHERE city = ? OR island = ?",
      [city, island]
    );

    res.local = existingLocal;
  }

  return res;
};
