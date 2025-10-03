import ChatColumn from "../components/ChatColumn";
import ChatForm from "../components/ChatForm";
import Footer from "../components/Footer";
import ChatHeader from "../components/ChatHeader";
import useData from "../hooks/useData";
import type { ChatProps } from "../components/Chat";
import { getAccessToken } from "../utils/accessToken";
import { useEffect, useState } from "react";

// Interface for API response format
interface ApiChatResponse {
  chat_from: "user" | "bot";
  datetime: string;
  chat: string;
  id: number;
}

const LandingPage = () => {
  const requestConfig = {
    headers: {
      Authorization: `Bearer ${getAccessToken()}`,
    },
  };

  const { data, error } = useData<ApiChatResponse[]>(
    "/chat",
    requestConfig
  );

  const [chats, setChats] = useState<ChatProps[]>([]);

  // Convert API format to ChatProps format
  const convertApiToChatProps = (apiChats: ApiChatResponse[]): ChatProps[] => {
    return apiChats.map(apiChat => ({
      from: apiChat.chat_from,
      datetime: apiChat.datetime,
      message: apiChat.chat,
      id: apiChat.id
    }));
  };

  useEffect(() => {
    if (data) {
      setChats(convertApiToChatProps(data));
    }
  }, [data]);


    useEffect(() => {
      if (error) {
        console.error(error);
      }
    }, [error]);


  return (
    <>
      <ChatHeader />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-4xl mx-auto flex flex-col gap-16">
          <div className="flex flex-col gap-4 w-full">
            <ChatColumn chats={chats || []} />
            <ChatForm
              setChats={setChats}
              chats={chats}
            />
          </div>
        </div>
      </main>
      <Footer />
    </>
  );
};

export default LandingPage;
