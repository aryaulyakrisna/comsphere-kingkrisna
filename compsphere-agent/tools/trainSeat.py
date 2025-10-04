from utils.trainSeat import trainSeat
from pydantic import BaseModel, Field
from langchain.tools import StructuredTool,Tool

class SeatInput(BaseModel):
    type: str = Field(..., description="Tipe kereta ('all', 'local', 'nonlocal', 'plane')")
    origin: str = Field("", description="Nama stasiun asal (opsional)")
    destination: str = Field("", description="Nama stasiun tujuan (opsional)")

class SeatTool:
    def __init__(self):
        self.train = trainSeat()

    def getSeat(self,type,origin = "",destination = ""):
        """
        Mencari ketersediaan kursi kereta berdasarkan tipe kereta, stasiun asal, dan stasiun tujuan. Anda dapat menggunakan tools get_seat_city untuk mendukung tools ini

        Args:
            type(str) : Tipe kereta ("all", "local", "nonlocal", "plane")
            origin(str) : Nama stasiun asal (opsional)
            destination(str) : Nama stasiun tujuan (opsional)
        Returns :
            str: Sebuah teks yang berisi Informasi ketersediaan kursi
        """

        message = "Hasil Pencarian Ketersediaan Kursi Kereta:\n"
        message += str(self.train.getSeat(type=type,origin=origin,destination=destination))
        message += "\n\n Anda Dapat melakukan pemesanan melalui aplikasi KAI Access atau partner resmi KAI."
        return message

    def as_tool(self):
        return StructuredTool.from_function(
            name="get_seat",
            description="Mencari ketersediaan kursi kereta berdasarkan tipe kereta, stasiun asal, dan stasiun tujuan. Anda dapat menggunakan tools get_seat_city untuk mendukung tools ini. Tipe kereta yang tersedia adalah 'all', 'local', 'nonlocal', 'plane'. Jika tidak ada stasiun asal atau tujuan, biarkan kosong.",
            func=self.getSeat,
            args_schema=SeatInput
        )

class SeatCityTool:
    def __init__(self):
        self.train = trainSeat()

    def getCityList(self):
        """
        Mendapatkan daftar nama stasiun yang tersedia untuk pencarian ketersediaan kursi kereta.

        Returns :
            str: Sebuah teks yang berisi daftar nama stasiun
        """
        stations = self.train.getCityList()
        text = "Daftar Stasiun:\n"
        for station in stations:
            text += f"- {station['station']} | Berada di Kota {station['city']} | Merupakan stasiun {'asal' if station['type'] == 'start' else 'tujuan'}\n"
        return text
    
    def as_tool(self):
        return StructuredTool.from_function(
            name="get_seat_city",
            description="Mendapatkan daftar nama stasiun yang tersedia untuk pencarian ketersediaan kursi kereta.",
            func=self.getCityList,
            args_schema=None
        )