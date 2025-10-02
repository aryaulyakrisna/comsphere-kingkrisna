import cors from "cors";
import express from "express";
import configureEnv from "./src/utils/configureEnv.js";
import authRouter from "./src/routes/authRoute.js";
import trainRouter from "./src/routes/trainRoute.js";
import lineRouter from "./src/routes/lineRoute.js";
import trainServicesRouter from "./src/routes/trainServicesRoute.js";


configureEnv();
const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());


app.use("/", authRouter);
app.use("/", trainRouter);
app.use("/", lineRouter);
app.use("/", trainServicesRouter);

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server is running on port: ${PORT}`);
});
