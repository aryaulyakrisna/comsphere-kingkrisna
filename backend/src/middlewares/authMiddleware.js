import { verifyToken } from "../utils/jwtUtils.js";

async function authMiddleware(req, res, next) {
  /*
    Melihat, mengambil, decode token, meneruskan payload ==> {id:..., username:...}
  */

  const JWTToken =
    req.headers["authorization"] && req.headers["authorization"].split(" ")[1]; // ambil dari format: Bearer <token>

  if (!JWTToken) return res.status(401).json({ message: "No token provided" }); // respon status tidak memiliki kredensial

  const decoded = verifyToken(JWTToken);

  if (!decoded)
    return res.status(403).json({ message: "Invalid or expired token" }); // respon status token habis/salah

  req.user = decoded;
  next();
}

export default authMiddleware;
