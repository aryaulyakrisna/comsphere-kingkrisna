import mysql from "mysql2";
import configureEnv from "../utils/configureEnv.js";

configureEnv();

const pool = mysql.createPool({
  /*
    Membuat pool ke db
  */

  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

export default pool.promise();
