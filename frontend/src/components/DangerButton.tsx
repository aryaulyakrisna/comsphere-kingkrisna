
interface DangerButtonProps {
  next?: () => void;
  children: React.ReactNode;
  buttonType?: "button" | "submit"
}

const DangerButton = ({next, children, buttonType}: DangerButtonProps) => {
  console.log(buttonType);
  
  return (
    <button
      className="border-2 border-[#CB2E29] px-4 py-2 rounded-lg hover:bg-[#CB2E29]/10 transition-all duration-300 active:scale-[99.5%]"
      onClick={next}
      type={buttonType || "button"}
    >
      {children}
    </button>
  );
}

export default DangerButton
