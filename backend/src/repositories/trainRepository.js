import pool from "../config/config.js"

export const train = async (
  cl,
  lrt,
  plane_train,
  local_train,
  nonlocal_train
) => {
  let res = {};

  if (lrt) {
    const [existingLrt] = await pool.query(
      "SELECT * FROM t_train WHERE train_type = 'lrt'"
    );

    res.lrt = existingLrt;
  }

  if (cl) {
    const [existingCl] = await pool.query(
      "SELECT * FROM t_train WHERE train_type = 'cl'"
    );

    res.cl = existingCl;
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
