import { useEffect, useRef, useState } from "react";
import apiClient from "../services/apiClient";
import Button from "./Button";
import useAuth from "../hooks/useAuth";
import { saveAccessToken } from "../utils/accessToken";
import { AxiosError } from "axios";
import { useNavigate } from "react-router-dom";

const RegisterForm = () => {
  const usernameRef = useRef<HTMLInputElement>(null);
  const passwordRef = useRef<HTMLInputElement>(null);
  const emailRef = useRef<HTMLInputElement>(null);
  const navigate = useNavigate();

  const [registerLoading, setRegisterLoading] = useState(false);
  const [error, setError] = useState("");
  const { setAuth } = useAuth();

  const handleRegister = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const data = {
      username: usernameRef.current?.value,
      email: emailRef.current?.value,
      password: passwordRef.current?.value,
    };

    if (!data.username || !data.password) return;
    setRegisterLoading(true);

    try {
      const res = await apiClient.post("/auth/register", data);

      saveAccessToken(res.data.data.accessToken);
      setAuth(true);
      navigate("/chat");
    } catch (err) {
      if (err instanceof AxiosError && err.response)
        setError(err.response.data.error);
    } finally {
      setRegisterLoading(false);
    }
  };

  useEffect(() => {
    if (error) {
      console.error(error);
    }
  }, [error])

  return (
    <form onSubmit={handleRegister} className="flex flex-col gap-4">
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
        Email
      </label>
      <input
        name="email"
        ref={emailRef}
        id="email"
        className="w-full overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Email"
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
        {registerLoading ? (
          <span className="loading loading-sm loading-bars"></span>
        ) : (
          <p>Masuk</p>
        )}
      </Button>
    </form>
  );
};

export default RegisterForm;
