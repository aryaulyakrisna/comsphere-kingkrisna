import { createContext, useState, useEffect } from "react";
import { getAccessToken } from "../utils/accessToken";
import apiClient from "../services/apiClient";
import { CanceledError } from "axios";

interface AuthType {
  auth: boolean;
  isLoading: boolean;
  error: string;
  setAuth: (deps: boolean) => void;
}

const AuthContext = createContext<AuthType>({
  auth: false,
  isLoading: false,
  error: "",
  setAuth: () => {},
});

const AuthProvider = ({ children }: { children: React.ReactNode }) => {
  const [auth, setAuth] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    const controller = new AbortController();
    setIsLoading(true);

    const getAuth = async () => {
      if (getAccessToken()) {
        const requestConfig = {
          headers: {
            Authorization: `Bearer ${getAccessToken()}`,
          },
        };

        try {
          const res = await apiClient.get("/auth", {
            signal: controller.signal,
            ...requestConfig,
          });

          setAuth(res.data.data.isAuth);
        } catch (err) {
          if (!(err instanceof CanceledError)) setError((err as Error).message);
        } finally {
          setTimeout(() => {
            setIsLoading(false);
          }, 1000);
        }
      } else setIsLoading(false);
    };

    getAuth();

    return () => {
      controller.abort();
      setAuth(false);
    };
  }, []);

  return (
    <AuthContext.Provider value={{ auth, isLoading, error, setAuth }}>
      {children}
    </AuthContext.Provider>
  );
};

export { AuthContext, AuthProvider };
