import { useEffect, useRef, useState } from "react";
import Button from "./Button";
import apiClient from "../services/apiClient";
import { AxiosError } from "axios";
import type { ChatProps } from "./Chat";
import { getAccessToken } from "../utils/accessToken";

interface ChatFormProps {
  setDeps: () => void;
  setChats: (chats: ChatProps[]) => void;
  chats: ChatProps[]
}

const ChatForm = ({ chats, setDeps, setChats }: ChatFormProps) => {
  const messageRef = useRef<HTMLInputElement>(null);

  const requestConfig = {
    headers: {
      Authorization: `Bearer ${getAccessToken()}`,
    },
  };

  const [chatLoading, setChatLoading] = useState(false);
  const [chatError, setError] = useState("");

  const handleChat = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const data = {
      message: messageRef.current?.value,
      from: "user",
      datetime: new Date().toISOString(),
    };

    if (!data.message) return;
    setChatLoading(true);
    setChats([data as ChatProps, ...chats]);

    try {
      await apiClient.post(
        "/chat",
        { chat: data.message, chat_from: "user" },
        requestConfig
      );
      setDeps();
    } catch (err) {
      if (err instanceof AxiosError && err.response)
        setError(err.response.data.error);
    } finally {
      setChatLoading(false);
    }
  };

  useEffect(() => {
    if (chatError) {
      console.error(chatError);
    }
  }, [chatError]);

  return (
    <form onSubmit={handleChat} className="flex flex-col items-end gap-4">
      <textarea
        name="message"
        id="message"
        className="w-full h-20 overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Tanya jalur, masukkan tujuan dan cari kereta Anda dipermudah"
      />
      <Button buttonType="submit">
        {chatLoading ? (
          <span className="loading loading-sm loading-bars"></span>
        ) : (
          <p>Kirim</p>
        )}
      </Button>
    </form>
  );
};

export default ChatForm;
