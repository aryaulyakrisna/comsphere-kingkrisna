import { CanceledError, type AxiosRequestConfig } from "axios";
import { useEffect, useState } from "react";
import apiClient from "../services/apiClient";

interface Responses<T> {
  data: T;
}

const useData = <T>(
  endpoint: string,
  requestConfig?: AxiosRequestConfig,
  deps?: unknown[]
) => {
  const [data, setData] = useState<T | null>(null);
  const [error, setError] = useState("");
  const [isLoading, setIsLoading] = useState(false);

  useEffect(
    () => {
      const controller = new AbortController();

      setIsLoading(true);

      const fetchData = async () => {
        try {
          const res = await apiClient.get<Responses<T>>(endpoint, {
            signal: controller.signal,
            ...requestConfig,
          });

          setData(res.data.data);
        } catch (err) {
          if (!(err instanceof CanceledError)) {
            console.error((err as Error).message);
            setError("Silahkan hubungi programmer atau asisten yang bertugas!");
          }
        } finally {
          setIsLoading(false);
        }
      };

      fetchData();

      return () => {
        controller.abort();
        setData(null);
      };
    },

    deps ? [...deps] : []
  );

  return { data, isLoading, error };
};

export default useData;
