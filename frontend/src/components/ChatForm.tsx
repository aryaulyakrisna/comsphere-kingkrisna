import { useEffect, useRef, useState } from "react";
import Button from "./Button";
import apiClient from "../services/apiClient";
import { AxiosError } from "axios";
import type { ChatProps } from "./Chat";
import { getAccessToken } from "../utils/accessToken";

interface ChatFormProps {
  setChats: React.Dispatch<React.SetStateAction<ChatProps[]>>;
  chats: ChatProps[];
}

const ChatForm = ({ chats, setChats }: ChatFormProps) => {
  const messageRef = useRef<HTMLTextAreaElement>(null);

  const requestConfig = {
    headers: {
      Authorization: `Bearer ${getAccessToken()}`,
    },
  };

  const [chatLoading, setChatLoading] = useState(false);
  const [chatError, setError] = useState("");

  const handleKeyDown = (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      
      // Check if there's a message to send
      const message = messageRef.current?.value;
      if (!message || chatLoading) return;
      
      // Directly call handleSubmit logic
      handleSubmit();
    }
  };

  const handleSubmit = async () => {
    const message = messageRef.current?.value;
    
    if (!message) return;
    
    // Clear input immediately after sending
    if (messageRef.current) {
      messageRef.current.value = '';
    }

    // Add user message to chat
    const userMessage: ChatProps = {
      message,
      from: "user",
      datetime: new Date().toISOString(),
      id: Date.now(), // temporary ID
    };

    setChatLoading(true);
    
    // Always show user message immediately (optimistic update)
    const updatedChats = [...chats, userMessage];
    setChats(updatedChats);

    // Add loading message for bot response  
    const loadingMessageId = Date.now() + 1;
    const loadingMessage: ChatProps = {
      message: "Sedang mengetik...",
      from: "bot", 
      datetime: new Date().toISOString(),
      id: loadingMessageId,
    };
    
    setChats([...updatedChats, loadingMessage]);

    try {
      // Send user message to API
      console.log("Sending to API:", { chat: message, chat_from: "user" });
      const postResponse = await apiClient.post(
        "/chat",
        { chat: message, chat_from: "user" },
        requestConfig
      );
      
      // Debug: log the response structure
      console.log("POST Response:", postResponse.data);
      
      // Check if POST response contains bot reply directly
      if (postResponse.data.data?.bot_response || postResponse.data.bot_response) {
        const botResponseData = postResponse.data.data?.bot_response || postResponse.data.bot_response;
        const botResponse: ChatProps = {
          message: botResponseData.chat || botResponseData.message || botResponseData,
          from: "bot",
          datetime: botResponseData.datetime || new Date().toISOString(),
          id: botResponseData.id || Date.now() + 2,
        };
        
        setChats(prevChats => 
          prevChats.map(chat => 
            chat.id === loadingMessageId ? botResponse : chat
          )
        );
        return; // Exit early if we got the bot response directly
      }
      
      // If no direct bot response, wait and fetch latest chats
      await new Promise(resolve => setTimeout(resolve, 1000));
      
      // Get latest chat data to get bot response
      const chatResponse = await apiClient.get("/chat", requestConfig);
      const chatData = chatResponse.data.data || [];
      
      // Debug: log the GET response
      console.log("GET Response:", chatResponse.data);
      console.log("Chat Data:", chatData);
      
      // Sort by datetime to get chronological order
      const sortedChats = [...chatData].sort((a, b) => 
        new Date(a.datetime).getTime() - new Date(b.datetime).getTime()
      );
      
      // Find the latest bot message that came after our user message
      const userMessageTime = new Date(userMessage.datetime).getTime();
      const botResponseCandidate = sortedChats
        .reverse()
        .find(chat => 
          chat.chat_from === "bot" && 
          new Date(chat.datetime).getTime() > userMessageTime
        );
      
      if (botResponseCandidate) {
        const botResponse: ChatProps = {
          message: botResponseCandidate.chat,
          from: "bot",
          datetime: botResponseCandidate.datetime,
          id: botResponseCandidate.id,
        };
        
        // Replace loading message with actual bot response
        setChats(prevChats => 
          prevChats.map(chat => 
            chat.id === loadingMessageId ? botResponse : chat
          )
        );
      } else {
        // No bot response found, show default message
        const defaultResponse: ChatProps = {
          message: "Maaf, tidak ada respon dari bot saat ini.",
          from: "bot",
          datetime: new Date().toISOString(),
          id: Date.now() + 2,
        };
        
        setChats(prevChats => 
          prevChats.map(chat => 
            chat.id === loadingMessageId ? defaultResponse : chat
          )
        );
      }
      
    } catch (err) {
      // Replace loading message with error message
      const errorMessage: ChatProps = {
        message: "Maaf, terjadi kesalahan dalam mengirim pesan. Silakan coba lagi.",
        from: "bot",
        datetime: new Date().toISOString(),
        id: Date.now() + 3,
      };
      
      setChats(prevChats => 
        prevChats.map(chat => 
          chat.id === loadingMessageId ? errorMessage : chat
        )
      );
      
      if (err instanceof AxiosError && err.response) {
        setError(err.response.data.error);
      }
    } finally {
      setChatLoading(false);
    }
  };

  const handleChat = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    await handleSubmit();
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
        ref={messageRef}
        onKeyDown={handleKeyDown}
        className="w-full h-20 overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Tanya jalur, masukkan tujuan dan cari kereta Anda dipermudah. Tekan Enter untuk kirim, Shift+Enter untuk baris baru."
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
