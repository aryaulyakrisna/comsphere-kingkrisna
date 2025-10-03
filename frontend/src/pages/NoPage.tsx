import Header from "../components/Header";

const LandingPage = () => {
  return (
    <>
      <Header />
      <main className="pt-48 pb-32  w-full p-8 min-h-screen">
        <div className="w-full max-w-6xl mx-auto flex flex-col gap-8">
          <p className="text-4xl font-semibold">
            <span className="text-[#ED6D1E]">Waduh</span> tidak ada yang kamu
            cari di tempat ini!
          </p>
        </div>
      </main>
    </>
  );
};

export default LandingPage;
