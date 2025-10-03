import { useEffect, useRef, useState } from "react";
import apiClient from "../services/apiClient";
import Button from "./Button";
import { AxiosError } from "axios";
import { useNavigate } from "react-router-dom";

const LoginForm = () => {
  const usernameRef = useRef<HTMLInputElement>(null);
  const passwordRef = useRef<HTMLInputElement>(null);
  const navigate = useNavigate();

  const [loginLoading, setLoginLoading] = useState(false);
  const [error, setError] = useState("");

  const handleLogin = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const data = {
      username: usernameRef.current?.value,
      password: passwordRef.current?.value,
    };

    if (!data.username || !data.password) return;
    setLoginLoading(true);

    try {
      const res = await apiClient.post("/auth", data);

      const { user_id, question } = res.data.data;

      navigate("/verify-otp", { state: { user_id, question } });
    } catch (err) {

      if (err instanceof AxiosError && err.response)
        setError(err.response.data.error);

    } finally {
      setLoginLoading(false);
    }
  };

  useEffect(() => {
    if (error) {
      console.error(error);
    }
  }, [error])

  return (
    <form onSubmit={handleLogin} className="flex flex-col gap-4">
      <label htmlFor="username" className="label">
        Username
      </label>
      <input
        name="username"
        ref={usernameRef}
        id="username"
        className="w-full overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Username"
      />
      <label htmlFor="password" className="label">
        Password
      </label>
      <input
        name="password"
        ref={passwordRef}
        id="password"
        className="w-full overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Password"
      />
      <Button buttonType="submit">
        {loginLoading? <span className="loading loading-sm loading-bars"></span> : <p>Masuk</p>}
      </Button>
    </form>
  );
};

export default LoginForm;
