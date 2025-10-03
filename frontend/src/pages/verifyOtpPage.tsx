import { useLocation } from "react-router-dom";
import Footer from "../components/Footer";
import LoginHeader from "../components/LoginHeader";
import VerifyOtpForm from "../components/verifyOtpForm";

const VerifyPage = () => {
  const location = useLocation();
  const state = location.state as { user_id: string; question: string };
  console.log(state);

  if (!state?.user_id || !state?.question) {
    window.location.href = "/login";
    return null;
  }

  return (
    <>
      <LoginHeader />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-sm mx-auto">
          <VerifyOtpForm />
        </div>
      </main>
      <Footer />
    </>
  );
};

export default VerifyPage;
