export interface ChatProps {
  from: "user" | "bot"
  datetime: string;
  message: string;
  id?: number;
}

const Chat = ({datetime, message, from}: ChatProps) => {

  return (
    <div
      className={`w-full flex ${
        from === "user" ? "justify-end" : "justify-start"
      }`}
    >
      <div
        className={`flex w-fit flex-col gap-4 ${
          from === "user" ? "items-end" : "items-start"
        }`}
      >
        <label className="label text-sm">{datetime}</label>
        <div
          className={`bg-base-100 p-4 shadow-xl rounded-lg ${
            from !== "user" && "border-2 border-[#2E2B70]"
          }`}
        >
          {message}
        </div>
      </div>
    </div>
  );
};

export default Chat;
