const getFormattedDateTime = () => {
  const date = new Date();
  const pad = (n) => n.toString().padStart(2, "0");

  const year = date.getFullYear();
  const month = pad(date.getMonth() + 1); // Month is 0-based
  const day = pad(date.getDate());

  const hours = pad(date.getHours());
  const minutes = pad(date.getMinutes());
  const seconds = pad(date.getSeconds());

  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
}

export default getFormattedDateTime;

export const getFormattedDateTimeIdn = () =>{
  const date = new Date();
  const pad = (n) => n.toString().padStart(2, "0");

  const months = [
    "Januari", "Februari", "Maret", "April", "Mei", "Juni",
    "Juli", "Agustus", "September", "Oktober", "November", "Desember"
  ];

  const year = date.getFullYear();
  const monthName = months[date.getMonth()]; // ambil nama bulan
  const day = pad(date.getDate());

  const hours = pad(date.getHours());
  const minutes = pad(date.getMinutes());
  const seconds = pad(date.getSeconds());

  return `${day} ${monthName} ${year} ${hours}:${minutes}:${seconds}`;
}


