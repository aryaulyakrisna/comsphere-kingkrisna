import pool from "../config/config.js";

export const tripHistory = async (
  user_id,
) => {

  const [existingTrip] = await pool.query(
    "SELECT * FROM t_trip_history WHERE user_id = ? LIMIT 20",
    [user_id]
  );

  return existingTrip;
};
