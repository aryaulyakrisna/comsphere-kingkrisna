
interface ButtonProps {
  next?: () => void;
  children: React.ReactNode;
  buttonType?: "button" | "submit"
}

const Button = ({next, children, buttonType}: ButtonProps) => {
  console.log(buttonType);
  
  return (
    <button
      className="border-2 border-[#2E2B70] px-4 py-2 rounded-lg hover:bg-[#2E2B70]/10 transition-all duration-300 active:scale-[99.5%]"
      onClick={next}
      type={buttonType || "button"}
    >
      {children}
    </button>
  );
}

export default Button
