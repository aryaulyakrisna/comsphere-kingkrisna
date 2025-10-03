import { Route, Routes } from "react-router-dom";
import LandingPage from "./pages/LandingPage";
import LoginPage from "./pages/LoginPage";
import RegisterPage from "./pages/RegisterPage";
import ChatPage from "./pages/ChatPage";
import VerifyOtpPage from "./pages/verifyOtpPage";
import NoPage from "./pages/NoPage";
import useAuth from "./hooks/useAuth";
import LoadingPage from "./pages/LoadingPage";

function App() {
  const { auth, isLoading } = useAuth();

  const displayedWhenAuth = (element: React.ReactElement) => {
    if (isLoading) return <LoadingPage />;
    else if (auth) return element;
    else return <LoginPage />;
  };

  return (
    <>
      <Routes>
        <Route path="/" element={<LandingPage />} errorElement={<NoPage />} />
        <Route
          path="/login"
          element={displayedWhenAuth(<LoginPage />)}
          errorElement={<NoPage />}
        />
        <Route
          path="/register"
          element={<RegisterPage />}
          errorElement={<NoPage />}
        />
        <Route
          path="/chat"
          element={displayedWhenAuth(<ChatPage />)}
          errorElement={<NoPage />}
        />
        <Route
          path="/verify-otp"
          element={<VerifyOtpPage />}
          errorElement={<NoPage />}
        />
        <Route path="*" element={<NoPage />} />
      </Routes>
    </>
  );
}

export default App;
