import { useEffect, useRef, useState } from "react";
import apiClient from "../services/apiClient";
import Button from "./Button";
import useAuth from "../hooks/useAuth";
import { saveAccessToken } from "../utils/accessToken";
import { AxiosError } from "axios";
import { useNavigate } from "react-router-dom";

interface VerifyOtpFormProps {
  user_id: string;
  question: string;
}

const VerifyOtpForm = ({user_id, question}: VerifyOtpFormProps) => {
  const answerRef = useRef<HTMLInputElement>(null);
  const navigate = useNavigate();

  const [loginLoading, setVerifyLoading] = useState(false);
  const [error, setError] = useState("");
  const { setAuth } = useAuth();

  const handleVerifyOtp = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const data = {
      user_id,
      question,
      answer: answerRef.current?.value,
    };

    if (!data.answer) return;
    setVerifyLoading(true);

    try {
      const res = await apiClient.post("/auth/verify-answer", data);

      saveAccessToken(res.data.data.accessToken);
      setAuth(true);
      navigate("/chat");
      
    } catch (err) {
      if (err instanceof AxiosError && err.response)
        setError(err.response.data.error);
    } finally {
      setVerifyLoading(false);
    }
  };

  useEffect(() => {
    if (error) {
      console.error(error);
    }
  }, [error]);

  return (
    <form onSubmit={handleVerifyOtp} className="flex flex-col gap-4">
      <div>{question}</div>
      <label htmlFor="Jawaban" className="label">
        Jawaban
      </label>
      <input
        name="answer"
        ref={answerRef}
        id="answer"
        className="w-full overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Jawaban"
      />
      <Button buttonType="submit">
        {loginLoading ? (
          <span className="loading loading-sm loading-bars"></span>
        ) : (
          <p>Masuk</p>
        )}
      </Button>
    </form>
  );
};

export default VerifyOtpForm;
