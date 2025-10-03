import { useEffect, useRef } from "react";
import type { ChatProps } from "./Chat"
import Chat from "./Chat";

interface ChatColumn {
  chats: ChatProps[];
}

const ChatColumn = ({chats}: ChatColumn) => {
  const chatEndRef = useRef<HTMLDivElement>(null);

  // Auto-scroll to bottom when new messages arrive
  useEffect(() => {
    chatEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [chats]);

  if (!chats.length) return null;

  // Sort chats by datetime to ensure oldest to newest order
  const sortedChats = [...chats].sort((a, b) => new Date(a.datetime).getTime() - new Date(b.datetime).getTime());

  return (
    <div className="rounded-lg bg-base-200 flex flex-col gap-4 p-8 shadow-xl min-h-[384px] max-h-[600px] overflow-y-auto">
      {sortedChats.map(chat => (
        <Chat from={chat.from} datetime={chat.datetime} message={chat.message} key={chat.id}/>
      ))}
      <div ref={chatEndRef} />
    </div>
  )
}

export default ChatColumn
