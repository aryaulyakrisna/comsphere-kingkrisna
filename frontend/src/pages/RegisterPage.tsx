import Footer from "../components/Footer";
import RegisterForm from "../components/RegisterForm";
import RegisterHeader from "../components/RegisterHeader";

const LoginPage = () => {
  return (
    <>
      <RegisterHeader />
      <main className="pt-48 pb-32 w-full p-8 min-h-screen">
        <div className="w-full max-w-sm mx-auto">
          <RegisterForm />
        </div>
      </main>
      <Footer />
    </>
  );
};

export default LoginPage;
