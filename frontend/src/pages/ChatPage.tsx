import ChatColumn from "../components/ChatColumn";
import ChatForm from "../components/ChatForm";
import Footer from "../components/Footer";
import ChatHeader from "../components/ChatHeader";
import useData from "../hooks/useData";
import type { ChatProps } from "../components/Chat";
import { getAccessToken } from "../utils/accessToken";
import { useEffect, useRef, useState } from "react";
import apiClient from "../services/apiClient";
import { AxiosError } from "axios";

const LandingPage = () => {
  const [deps, setDeps] = useState(false);

  const requestConfig = {
    headers: {
      Authorization: `Bearer ${getAccessToken()}`,
    },
  };

  const { data, isLoading, error } = useData<ChatProps[]>(
    "/chat",
    requestConfig,
    [deps]
  );

  const [chats, setChats] = useState<ChatProps[]>(data || []);

  const messageRef = useRef<HTMLInputElement>(null);

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
    setChats([
      ...chats,
      {
        message: data.message,
        from: "user",
        datetime: new Date().toISOString(),
      },
    ]);

    try {
      await apiClient.post("/chat", {chat:data.message, chat_from:"user"}, requestConfig);
      setDeps(!deps);
    } catch (err) {
      if (err instanceof AxiosError && err.response)
        setError(err.response.data.error);
    } finally {
      setChatLoading(false);
    }
  };

  useEffect(() => {
    if (error) {
      console.error(error);
    }

    if (chatError) {
      console.error(chatError);
    }
  }, [chatError, error]);


  return (
    <>
      <ChatHeader />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-4xl mx-auto flex flex-col gap-16">
          <div className="flex flex-col gap-4 w-full">
            <ChatColumn chats={data || []} />
            <ChatForm
              next={handleChat}
              isLoading={isLoading || chatLoading}
            />
          </div>
        </div>
      </main>
      <Footer />
    </>
  );
};

export default LandingPage;
