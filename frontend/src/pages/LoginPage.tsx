import Footer from "../components/Footer";
import LoginForm from "../components/LoginForm";
import LoginHeader from "../components/LoginHeader";

const LoginPage = () => {
  return (
    <>
      <LoginHeader />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-sm mx-auto">
          <LoginForm />
        </div>
      </main>
      <Footer />
    </>
  );
};

export default LoginPage;
