import pool from "../config/config.js";

export const tripHistory = async (user_id, plane_train, local_train, nonlocal_train) => {
  let res = {};

  if (plane_train) {
    const [existingPlane] = await pool.query(
      "SELECT * FROM t_trip_history WHERE train_type = 'plane' AND user_id = ?",
      [user_id]
    );

    res.plane = existingPlane;
  }

  if (local_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_trip_history WHERE train_type = 'local' AND user_id = ?",
      [user_id]
    );

    res.local = existingLocal;
  }

  if (nonlocal_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_trip_history WHERE train_type = 'nonlocal' AND user_id = ?",
      [user_id]
    );

    res.local = existingLocal;
  }

  return res;
};
