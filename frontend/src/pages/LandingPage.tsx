import { useNavigate } from "react-router-dom";
import ChatColumn from "../components/ChatColumn";
import ChatForm from "../components/ChatForm";
import Footer from "../components/Footer";
import Header from "../components/Header";

const LandingPage = () => {
  const navigate = useNavigate();
  const now = new Date();
  const formatter = new Intl.DateTimeFormat("id-ID", {
    year: "numeric",
    month: "long",
    day: "numeric",
    hour: "numeric",
    minute: "numeric",
    second: "numeric",
    hour12: false,
  });

  const formattedDateTime = formatter.format(now);

  return (
    <>
      <Header />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-4xl mx-auto flex flex-col gap-16">
          <p className="text-4xl font-semibold">
            <span className="text-[#ED6D1E]">Membantu</span> Anda melakukan
            perjalanan terbaik, cari jadwal kereta hingga kursi terbaik
          </p>
          <div className="flex flex-col gap-4 w-full">
            <ChatColumn
              chats={[
                {
                  message:
                    "Halo! Saya RailBot, asisten perjalanan dari KAI 🚆. Saya siap membantu Anda menemukan jadwal kereta, memilih kursi terbaik, hingga memberikan info perjalanan lainnya. Silakan tanyakan apa saja 🙂",
                  from: "bot",
                  datetime: formattedDateTime,
                },
              ]}
            />
            <ChatForm next={() => navigate("/register")} />
          </div>
        </div>
      </main>
      <Footer/>
    </>
  );
};

export default LandingPage;
