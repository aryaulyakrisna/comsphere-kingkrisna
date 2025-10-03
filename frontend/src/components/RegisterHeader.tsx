import { Link } from "react-router-dom";
import Button from "./Button";

const RegisterHeader = () => {
  return (
    <div className="w-full p-8 shadow-xl flex gap-4 justify-between items-center bg-base-100 fixed top-0">
      <a href="/" className="flex gap-4 items-end">
        <img src="/RailBot.svg" alt="logo" className="w-12" />
        <p className="text-lg font-semibold">RailBot</p>
      </a>
      <div className="flex gap-4 items-center">
        <Button>
          <Link className="font-semibold" to={"/login"}>
            Masuk
          </Link>
        </Button>
      </div>
    </div>
  );
};

export default RegisterHeader;
