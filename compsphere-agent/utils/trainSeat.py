import requests
import os
from dotenv import load_dotenv
from urllib.parse import urlencode

load_dotenv()
class trainSeat:
    def getCityList(self):
        url = os.getenv("BACKEND_URL") + "/train/seat/get-city"
        response = requests.get(url)
        if response.status_code == 200:
            data = response.json()
            return data['data']

    def getSeat(self,type,origin = "",destination = ""):
        url = os.getenv("BACKEND_URL") + "/train/seat"

        params = {}

        if type == "all":
            params['local_train'] = 1
            params['nonlocal_train'] = 1
            params['plane_train'] = 1
        else :
            if type == "local":
                params['local_train'] = 1

            if type == "nonlocal":
                params['nonlocal_train'] = 1

            if type == "plane":
                params['plane_train'] = 1

        if origin:
            params['start_stat_name'] = origin
        if destination:
            params['finish_stat_name'] = destination

        query_string = urlencode(params)
        url += "?" + query_string

        print("Requesting URL:", url)  # Debugging line to check the final URL

        response = requests.get(url)
        if response.status_code == 200:
            data = response.json()
            return data['data']