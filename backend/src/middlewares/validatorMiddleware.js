import { validationResult } from "express-validator";

function validator(req, res, next) {
  /*
    Mengmbalikan error pada request body
  */
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  next();
}

export default validator;
