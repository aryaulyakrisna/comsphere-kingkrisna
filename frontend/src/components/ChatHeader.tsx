const Header = () => {
  return (
    <div className="w-full p-8 shadow-xl flex gap-4 justify-between items-center bg-base-100 fixed top-0">
      <a href="/" className="flex gap-4 items-end">
        <img src="/RailBot.svg" alt="logo" className="w-12" />
        <p className="text-lg font-semibold">RailBot</p>
      </a>
    </div>
  );
};

export default Header;
