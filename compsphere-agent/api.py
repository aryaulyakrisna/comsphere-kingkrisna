from fastapi import FastAPI, Request, HTTPException, status, Depends
from pydantic import BaseModel
from llm import OpenRouterMessage, GeminiMessage
from dotenv import load_dotenv
import os
from tools.krlTools import KrlTools,KrlSchedule,StationsList
from tools.trainSeat import SeatTool,SeatCityTool
import requests
import json

load_dotenv()

app = FastAPI()

class ChatRequest(BaseModel):
    query: list[dict]


@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.post("/chat")
async def chat_with_agent(request: ChatRequest):
    system_prompt = "Kamu adalah asisten yang akan membantu pengguna dalam mencari informasi terkait kereta KRL dan ketersediaan kursi kereta local, nonlocal, dan kereta bandara (plane). Gunakan tools yang tersedia untuk menjawab pertanyaan pengguna. Jika informasi tidak ditemukan, katakan 'Maaf, saya tidak dapat menemukan informasi yang Anda cari.' Jangan membuat jawaban jika tidak ada informasi di tools."
    krlTools = KrlTools()
    krlScheduleTools = KrlSchedule()
    stationListTools = StationsList()
    trainSeatTools = SeatTool()
    trainSeatCityTools = SeatCityTool()
    tools = [krlTools.as_tool(),krlScheduleTools.as_tool(),stationListTools.as_tool(),trainSeatTools.as_tool(),trainSeatCityTools.as_tool()]
    llm = GeminiMessage(
            api_key=os.getenv('GEMINI_API_KEY', ''),
            model=os.getenv('GEMINI_MODEL'),
            temperature=0.8,
            tools=tools,
            system_prompt=system_prompt
        )
    if not request.query:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Query cannot be empty")

    try:
        reply = llm.getMessage(request.query)
        print(f"LLM Response: {reply[-1].content}")
        return {"response": reply[-1].content}
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error processing LLM response: {str(e)}")
    
@app.post("/otp/get-question")
async def get_otp_question(request: Request):
    data = await request.json()

    if "user_id" not in data:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="user_id is required")
    
    user_id = data["user_id"]

    url = os.getenv("TRIP_HISTORY_URL") + f"?user_id={user_id}"

    headers = {
        "Authorization": "Bearer " + os.getenv("TRIP_HISTORY_AUTH")
    }

    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        raise HTTPException(status_code=response.status_code, detail="Error retrieving OTP question")
    
    data = response.json()
    trip_data = data['data']

    system_prompt = f"Kamu adalah asisten yang akan memberikan {os.getenv('OTPQUESTION_COUNT', 1)} pertanyaan keamanan untuk memverifikasi identitas pengguna berdasarkan riwayat perjalanan mereka. Pastikan pertanyaannya jelas dan mudah dipahami. Respon hanya dalam bentuk pertanyaan tanpa teks tambahan. Buat pertanyaan yang berbeda setiap kali. Dan usahakan pertanyaan personal dan bukan merupakan hal yang umum diketahui Seperti Tujuan Kereta Bengawan dimana informasi tersebut merupakan informasi Umum yang ada di Internet."

    llm = GeminiMessage(
            api_key=os.getenv('GEMINI_API_KEY', ''),
            model=os.getenv('GEMINI_MODEL'),
            temperature=0.8,
            system_prompt=system_prompt
        )

    query = [
        {
            "role": "user",
            "content": trip_data
        }
    ]
    response = llm.getMessage(query)
    question = response[-1].content

    return {"question": question}

@app.post("/otp/verify-answer")
async def verify_otp_answer(request: Request):
    data = await request.json()

    if "user_id" not in data or "answer" not in data or "question" not in data:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="user_id, answers, and question are required")

    user_id = data["user_id"]
    answer = data["answer"]
    question = data["question"]

    user_id = data["user_id"]

    url = os.getenv("TRIP_HISTORY_URL") + f"?user_id={user_id}"

    headers = {
        "Authorization": "Bearer " + os.getenv("TRIP_HISTORY_AUTH")
    }

    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        raise HTTPException(status_code=response.status_code, detail="Error retrieving OTP question")
    
    data = response.json()
    trip_data = data['data']

    system_prompt = "Kamu adalah asisten yang akan memverifikasi jawaban pengguna berdasarkan riwayat perjalanan mereka. Jawaban harus sesuai dengan data riwayat perjalanan. Respon hanya dengan 'benar' atau 'salah'."

    llm = GeminiMessage(
            api_key=os.getenv('GEMINI_API_KEY', ''),
            model=os.getenv('GEMINI_MODEL'),
            temperature=0.8,
            system_prompt=system_prompt
        )
    
    print("Trip Data:", trip_data)
    print("Question:", question)
    print("Answer:", answer)

    query = [
        {
            "role": "user",
            "content": "Berikut data riwayat perjalanan: " + str(trip_data) + "\n\n Pertanyaan: " + question + "\n\n Jawaban: " + answer
        }
    ]
    response = llm.getMessage(query)
    question = response[-1].content

    print("LLM Response:", question)

    answer = False if question.lower() == "salah" else True

    return {"response": answer}