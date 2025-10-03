import Button from "./Button";

interface ChatFormProps {
  next: (() => void) | ((e: React.FormEvent<HTMLFormElement>) => void);
  isLoading?: boolean;
}

const ChatForm = ({ next, isLoading }: ChatFormProps) => {
  return (
    <form onSubmit={next} className="flex flex-col items-end gap-4">
      <textarea
        name="message"
        id="message"
        className="w-full h-20 overflow-y-auto rounded-lg shadow-xl bg-base-200 p-4 focus:outline-none"
        placeholder="Tanya jalur, masukkan tujuan dan cari kereta Anda dipermudah"
      />
      <Button buttonType="submit">
        {isLoading ? (
          <span className="loading loading-sm loading-bars"></span>
        ) : (
          <p>Kirim</p>
        )}
      </Button>
    </form>
  );
};

export default ChatForm;
