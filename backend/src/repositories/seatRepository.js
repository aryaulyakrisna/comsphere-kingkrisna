import pool from "../config/config.js";

export const seat = async (status, train_code, amountAsc) => {

  const [existingSeat] = Number(amountAsc)
    ? await pool.query(
        "SELECT * FROM t_seat WHERE status = ? AND train_code = ? ORDER BY amount ASC",
        [status, train_code]
      )
    : await pool.query(
        "SELECT * FROM t_seat WHERE status = ? AND train_code = ? ORDER BY amount DESC",
        [status, train_code]
      );

  return existingSeat;
};
