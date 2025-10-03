import type { ChatProps } from "./Chat"
import Chat from "./Chat";

interface ChatColumn {
  chats: ChatProps[];
}

const ChatColumn = ({chats}: ChatColumn) => {
  if (!chats.length) return

  return (
    <div className="rounded-lg bg-base-200 flex flex-col gap-4 p-8 shadow-xl min-h-[384px]">
      {chats.map(chat => (
        <Chat from={chat.from} datetime={chat.datetime} message={chat.message} key={chat.id}/>
      ))}
    </div>
  )
}

export default ChatColumn
