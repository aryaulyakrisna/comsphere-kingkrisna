import ChatColumn from "../components/ChatColumn";
import ChatForm from "../components/ChatForm";
import Footer from "../components/Footer";
import ChatHeader from "../components/ChatHeader";
import useData from "../hooks/useData";
import type { ChatProps } from "../components/Chat";
import { getAccessToken } from "../utils/accessToken";
import { useEffect, useState } from "react";

const LandingPage = () => {
  const [deps, setDeps] = useState(false);

  const requestConfig = {
    headers: {
      Authorization: `Bearer ${getAccessToken()}`,
    },
  };

  const { data, error } = useData<ChatProps[]>(
    "/chat",
    requestConfig,
    [deps]
  );

  const [chats, setChats] = useState<ChatProps[]>(data || []);

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
              setDeps={() => setDeps(!deps)}
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
