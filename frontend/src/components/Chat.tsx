import ReactMarkdown from 'react-markdown';

export interface ChatProps {
  from: "user" | "bot"
  datetime: string;
  message: string;
  id?: number;
}

const Chat = ({datetime, message, from}: ChatProps) => {
  const isLoading = message === "Sedang mengetik...";

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
          } ${isLoading && "animate-pulse"}`}
        >
          {isLoading ? (
            <div className="flex items-center gap-2">
              <span className="loading loading-dots loading-sm"></span>
              <span className="text-sm text-gray-500">Sedang mengetik...</span>
            </div>
          ) : from === "bot" ? (
            <div className="prose prose-sm max-w-none">
              <ReactMarkdown>{message}</ReactMarkdown>
            </div>
          ) : (
            <div className="whitespace-pre-wrap">{message}</div>
          )}
        </div>
      </div>
    </div>
  );
};

export default Chat;
