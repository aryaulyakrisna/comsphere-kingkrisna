import pool from "../config/config.js";

export const trainSeat = async (
  plane_train,
  local_train,
  nonlocal_train,
  start_stat_name,
  finish_stat_name
) => {
  let res = {};


  if (plane_train) {
    const [existingPlane] = await pool.query(
      "SELECT train_name, seat_type, start_stat_name, finish_stat_name, starting_city, destination_city, schedule, amount FROM t_seat WHERE train_type = 'plane' AND (start_stat_name = ? OR finish_stat_name = ?)",
      [start_stat_name, finish_stat_name]
    );

    res.plane = existingPlane;
  }

  if (local_train) {
    const [existingLocal] = await pool.query(
      "SELECT train_name, seat_type, start_stat_name, finish_stat_name, starting_city, destination_city, schedule, amount FROM t_seat WHERE train_type = 'local' AND (start_stat_name = ? OR finish_stat_name = ?)",
      [start_stat_name, finish_stat_name]
    );

    res.local = existingLocal;
  }

  if (nonlocal_train) {
    const [existingLocal] = await pool.query(
      "SELECT train_name, seat_type, start_stat_name, finish_stat_name, starting_city, destination_city, schedule, amount FROM t_seat WHERE train_type = 'nonlocal' AND (start_stat_name = ? OR finish_stat_name = ?)",
      [start_stat_name, finish_stat_name]
    );

    res.nonlocal = existingLocal;
  }

  return res;
};

export const trainSeatCity = async () => {
  const [startingCity] = await pool.query(
    "SELECT DISTINCT start_stat_name,  starting_city FROM t_seat"
  );

  let dataSeat = [];

  startingCity.forEach((item) => {
    if (!dataSeat) {
      dataSeat = [];
    }
    dataSeat.push({
      "type": "start",
      "city": item.starting_city,
      "station": item.start_stat_name
    });
  });

  const [destinationCity] = await pool.query(
    "SELECT DISTINCT finish_stat_name, destination_city FROM t_seat"
  );

  destinationCity.forEach((item) => {
    if (!dataSeat) {
      dataSeat = [];
    }
    dataSeat.push({
      "type": "destination",
      "city": item.destination_city,
      "station": item.finish_stat_name
    });
  });

  return dataSeat;
};
