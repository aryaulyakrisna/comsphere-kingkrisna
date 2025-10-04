import useAuth from "../hooks/useAuth";
import { removeAccessToken } from "../utils/accessToken";
import DangerButton from "./DangerButton";
import { useNavigate } from "react-router-dom";

const Header = () => {
  const navigate = useNavigate();
  const { setAuth } = useAuth();

  const handleLogout = () => {
    // Logic for logging out the user
    removeAccessToken();
    navigate("/login");
    setAuth(false);
  };

  return (
    <div className="w-full p-8 shadow-xl flex gap-4 justify-between items-center bg-base-100 fixed top-0">
      <a href="/" className="flex gap-4 items-end">
        <img src="/RailBot.svg" alt="logo" className="w-12" />
        <p className="text-lg font-semibold">RailBot</p>
      </a>
      <DangerButton next={handleLogout}>
        <p>Masuk</p>
      </DangerButton>
    </div>
  );
};

export default Header;
