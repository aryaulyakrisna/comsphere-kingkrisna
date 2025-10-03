import pool from "../config/config.js";

export const trainSeat = async (
  plane_train,
  local_train,
  nonlocal_train,
  starting_city,
  destination_city
) => {
  let res = {};


  if (plane_train) {
    const [existingPlane] = await pool.query(
      "SELECT * FROM t_seat WHERE train_type = 'plane' AND (starting_city = ? OR destination_city = ?)",
      [starting_city, destination_city]
    );

    res.plane = existingPlane;
  }

  if (local_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_seat WHERE train_type = 'local' AND (starting_city = ? OR destination_city = ?)",
      [starting_city, destination_city]
    );

    res.local = existingLocal;
  }

  if (nonlocal_train) {
    const [existingLocal] = await pool.query(
      "SELECT * FROM t_seat WHERE train_type = 'nonlocal' AND (starting_city = ? OR destination_city = ?)",
      [starting_city, destination_city]
    );

    res.local = existingLocal;
  }

  return res;
};
