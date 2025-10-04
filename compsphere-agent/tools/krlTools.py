from krlRouter import KrlRouter
from langchain.tools import StructuredTool,Tool
from pydantic import BaseModel

class SearchInput(BaseModel):
    start: str
    end: str

class ScheduleInput(BaseModel):
    station_code : str
    start: str
    end: str


class KrlTools:
    def __init__(self):
        self.krlRouter = KrlRouter()
    
    def getRoute(self,start,end):
        """
        Mencari Route kereta KRL di Database berdasarkan station_code awal (start) dan station_code tujuan (akhir). Gunakan tools get_krl_stations untuk mendukung tools ini.

        Args:
            start(str) : station_code Stasiun Awal
            end(str) : station_code Stasiun Akhir
        
        Returns :
            str: Sebuah teks yang berisi Informasi rute
        """
        try :
            route = self.krlRouter.getRoutes(start,end)
            return route
        except Exception as e:
            print("Exception : " + e)
            text = "Error While Finding Route, Make Sure Your station is Listed Below :"
            iter = 1
            for i in self.krlRouter.getStations():
                text += i + "\n"
            print(text)
            return text

        
    def as_tool(self):
        return StructuredTool.from_function(
            name="get_route",
            description=" Mencari Route kereta KRL di Database berdasarkan station_code awal (start) dan station_code tujuan (akhir). Gunakan tools get_krl_stations untuk mendukung tools ini.",
            func=self.getRoute,
            args_schema=SearchInput
        )

class KrlSchedule:
    def __init__(self):
        self.krlRouter = KrlRouter()

    def get_schedule(self,station_code,start,end):
        """
        Mencari jadwal kereta KRL di Stasiun berdasrkan station_code

        Args:
            station_code(str) : kode stasiun
            start(str) : Jam Range Awal pencarian dalam Format "H:M"
            end(str) : Jam Range Akhir Pencarian dalam Format "H:M"
        
        Returns :
            str: Sebuah teks yang berisi Informasi Jadwal
        """
        return self.krlRouter.get_krl_schedule(station_code=station_code,start=start,end=end)
    
    def as_tool(self):
        return StructuredTool.from_function(
            name="get_schedule",
            description=" Mencari Jadwal kereta KRL.",
            func=self.get_schedule,
            args_schema=ScheduleInput
        )
    
class StationsList:
    def __init__(self):
        self.krlRouter = KrlRouter()

    def get_stations(self):
        """
        Tools untuk Melihat daftar stasiun yang tersedia. Gunakan tools ini untuk mencari station_code, Teks akan berisi format 'station_code - Nama Stasiun'

        Returns :
            str: Sebuah teks yang berisi Daftar Staisun
        """
        stationList = self.krlRouter.getStations()

        message = "Berikut adalah dafat stasiun yang ada : \n"

        for i in stationList:
            message += f"- {i} \n"

        return message
    
    def as_tool(self):
        return StructuredTool.from_function(
            name="get_krl_stations",
            description="Tools untuk Melihat daftar stasiun yang tersedia. Gunakan tools ini untuk mencari station_code, Teks akan berisi format 'station_code - Nama Stasiun'",
            func=self.get_stations,
        )