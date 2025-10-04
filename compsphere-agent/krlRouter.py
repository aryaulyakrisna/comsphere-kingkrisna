import pymysql
from collections import deque
import os
from dotenv import load_dotenv
from datetime import datetime, timedelta
import requests
import pytz

load_dotenv()

class KrlRouter:
    def __init__(self):
        self.conn = pymysql.connect(
            host=os.getenv('DB_HOST'),
            user=os.getenv('DB_USERNAME'),
            password=os.getenv('DB_PASSWORD'),
            database=os.getenv('DB_NAME'),
            cursorclass=pymysql.cursors.DictCursor
        )
        self.cursor = self.conn.cursor()

    def getStations(self):
        self.cursor.execute("""
            SELECT * FROM station
        """)
        stations = self.cursor.fetchall()

        stationList = []

        for station in stations:
            stationList.append(f"{station['station_code']} - {station['station_name']}")

        return stationList

    
    def get_neighbors(self,station_id,line_id):
        neighbors = []

        # Tetangga di line yang sama (berdasarkan order)
        self.cursor.execute("""
            SELECT s2.id AS station_id, sil2.line_id
            FROM station_in_line sil1
            JOIN station_in_line sil2 
            ON sil1.line_id = sil2.line_id
            AND ABS(sil1.`order` - sil2.`order`) = 1
            JOIN station s2 ON s2.id = sil2.station_id
            WHERE sil1.station_id = %s AND sil1.line_id = %s
        """, (station_id, line_id))
        neighbors += self.cursor.fetchall()

        # Transit: line lain di stasiun yang sama
        self.cursor.execute("""
            SELECT sil2.station_id, sil2.line_id
            FROM station_in_line sil1
            JOIN station_in_line sil2 
            ON sil1.station_id = sil2.station_id
            WHERE sil1.station_id = %s AND sil1.line_id != %s
        """, (station_id, line_id))
        neighbors += self.cursor.fetchall()

        return neighbors
    
    def find_route(self,start_id, end_id):
        visited = set()
        queue = deque([[{"station_id": start_id, "line_id": None}]])  

        while queue:
            path = queue.popleft()
            node = path[-1]

            # sudah sampai tujuan
            if node["station_id"] == end_id:
                return path

            key = (node["station_id"], node["line_id"])
            if key not in visited:
                visited.add(key)

                # kalau line_id None (stasiun awal), ambil semua line yg ada di stasiun itu
                if node["line_id"] is None:
                    self.cursor.execute("SELECT line_id FROM station_in_line WHERE station_id = %s", (node["station_id"],))
                    lines = self.cursor.fetchall()
                    for l in lines:
                        new_path = list(path)
                        new_path.append({"station_id": node["station_id"], "line_id": l["line_id"]})
                        queue.append(new_path)
                else:
                    # ambil tetangga (stasiun lanjut + transit)
                    neighbors = self.get_neighbors(node["station_id"], node["line_id"])
                    for neigh in neighbors:
                        new_path = list(path)
                        new_path.append({"station_id": neigh["station_id"], "line_id": neigh["line_id"]})
                        queue.append(new_path)
        return None
    
    def get_station_name(self,station_id):
        self.cursor.execute("SELECT station_name FROM station WHERE id = %s", (station_id,))
        result = self.cursor.fetchone()
        return result["station_name"] if result else None
    
    def get_station_name_by_code(self,station_code):
        self.cursor.execute("SELECT station_name FROM station WHERE station_code = %s", (station_code,))
        result = self.cursor.fetchone()
        return result["station_name"] if result else None
    
    def get_station_code(self,station_id):
        self.cursor.execute("SELECT station_code FROM station WHERE id = %s", (station_id,))
        result = self.cursor.fetchone()
        return result["station_code"] if result else None

    def get_line_name(self,line_id):
        self.cursor.execute("SELECT line_name FROM line WHERE id = %s", (line_id,))
        result = self.cursor.fetchone()
        return result["line_name"] if result else None
    
    def get_krl_schedule(self,station_code,start="",end=""):
        tz = pytz.timezone("Asia/Jakarta")
        now = datetime.now(tz)

        startTime = None
        endTime = None

        if start != "":
            startTime = datetime.strptime(start,"%H:%M")

        if end != "":
            endTime = datetime.strptime(end,"%H:%M")

        if not startTime:
            startTime = now
        if not endTime:
            endTime = now + timedelta(hours=3)
            
        startTime = startTime.strftime("%H:%M")
        endTime = endTime.strftime("%H:%M")
        

        req = requests.get(f"https://api-partner.krl.co.id/krl-webs/v1/schedule?stationid={station_code}&timefrom={startTime}&timeto={endTime}",headers={
            "Authorization" : f"Bearer {os.getenv("KRL_SCHEDULE_AUTH")}"
        })

        json_data = req.json()   # parse to dict
        datas = json_data["data"] # take only station list

        text = f"Berikut beberapa jadwal Kereta Terdekat di Stasiun {self.get_station_name_by_code(station_code)}, Gunakan ini untuk menambhahkan Jawaban  \n"

        for data in datas:
            text += f"- {data['ka_name']} Rute {data['route_name']}, Tujuan {data['dest']} Akan tiba pukul {data['time_est']} dan sampai di tujuan akhir pada {data['dest_time']}\n"
        text += "\n\n"

        return text

    def print_route(self,path):
        if not path:
            raise Exception("Path Not Found")
            
        total_stations = len(path) - 1

        current_line = None
        segment_start = None
        count = 0

        stationStop = []
        message = ""

        # tambahkan stasiun awal
        stationStop.append(path[0])

        segment_stations = []  # simpan daftar stasiun dalam satu segmen line

        for i in range(1, len(path)):
            station = path[i]
            prev_station = path[i-1]

            # deteksi awal line
            if current_line is None:
                current_line = station["line_id"]
                segment_start = prev_station["station_id"]

            # jika line berubah -> berarti transit
            if station["line_id"] != current_line:
                # tulis segmen sebelumnya
                message += f"- Naik {self.get_line_name(current_line)} dari "
                message += f"{self.get_station_name(segment_start)} ke {self.get_station_name(prev_station['station_id'])} "
                message += f"({count} stasiun)\n"

                # daftar stasiun yg dilewati pada segmen ini
                message += "  Stasiun yang dilewati: "
                message += " -> ".join([self.get_station_name(s["station_id"]) for s in segment_stations]) + "\n"

                # catat titik transit
                message += f"  Transit di {self.get_station_name(prev_station['station_id'])}\n\n"
                stationStop.append(prev_station)

                # reset untuk segmen baru
                current_line = station["line_id"]
                segment_start = prev_station["station_id"]
                count = 0
                segment_stations = []

            count += 1
            segment_stations.append(station)

        # segmen terakhir
        message += f"- Naik {self.get_line_name(current_line)} dari "
        message += f"{self.get_station_name(segment_start)} ke {self.get_station_name(path[-1]['station_id'])} "
        message += f"({count} stasiun)\n"

        # daftar stasiun segmen terakhir
        message += "  Stasiun yang dilewati: "
        message += " -> ".join([self.get_station_name(s["station_id"]) for s in segment_stations]) + "\n"

        message += f"\nTotal stasiun dilewati: {len(path)-1}\n\n"

        # jika mau ambil jadwal KRL dari stationStop
        for i in stationStop:
            message += self.get_krl_schedule(self.get_station_code(i['station_id']))

        return message
    
    def getRoutes(self,start_code,end_code):
        self.cursor.execute("SELECT id FROM station WHERE station_code = %s", (start_code,))
        start_row = self.cursor.fetchone()
        self.cursor.execute("SELECT id FROM station WHERE station_code = %s", (end_code,))
        end_row = self.cursor.fetchone()
        path = []

        if not start_row or not end_row:
            raise Exception("Stasiun not Found")
        else:
            start_id = start_row["id"]
            end_id = end_row["id"]

            path = self.find_route(start_id, end_id)
        
        return self.print_route(path)
