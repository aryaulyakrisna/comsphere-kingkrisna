# ComSphere Agent - FastAPI Application

Aplikasi FastAPI untuk chatbot yang membantu pengguna mencari informasi terkait kereta KRL dan ketersediaan kursi kereta lokal, non-lokal, dan kereta bandara.

## Fitur

- **Chat AI Agent**: Menggunakan Gemini AI untuk menjawab pertanyaan pengguna
- **Informasi KRL**: Jadwal, stasiun, dan rute kereta KRL
- **Pencarian Tiket**: Ketersediaan kursi untuk berbagai jenis kereta
- **Verifikasi Keamanan**: Sistem pertanyaan keamanan berdasarkan riwayat perjalanan
- **Riwayat Perjalanan**: Akses ke data perjalanan pengguna

## Persyaratan Sistem

- Python 3.8+
- MySQL Database
- API Key Gemini
- Akses ke API KRL Schedule

## Instalasi

### 1. Clone Repository

```bash
git clone <repository-url>
cd compsphere-agent
```

### 2. Buat Virtual Environment

```bash
python -m venv venv
```

#### Aktivasi Virtual Environment

**Windows:**
```bash
venv\Scripts\activate
```

**Linux/Mac:**
```bash
source venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Konfigurasi Environment Variables

Buat file `.env` di root directory `compsphere-agent` dengan konfigurasi berikut:

```env
# Database Configuration
DB_HOST=localhost
DB_USERNAME=your_db_username
DB_PASSWORD=your_db_password
DB_NAME=comsphere

# Gemini AI Configuration
GEMINI_API_KEY=your_gemini_api_key
GEMINI_MODEL=gemini-1.5-flash

# KRL Schedule API
KRL_SCHEDULE_AUTH=your_krl_schedule_auth_token

# Trip History API
TRIP_HISTORY_URL=http://localhost:3000/api/trip-history
TRIP_HISTORY_AUTH=your_trip_history_auth_token

# Security Questions Configuration
OTPQUESTION_COUNT=3
```

### 5. Setup Database

Pastikan MySQL server berjalan dan database `comsphere` sudah dibuat. Anda dapat menggunakan file SQL yang tersedia di folder `db/`:

```bash
mysql -u your_username -p < ../db/db_comsphere.sql
```

## Menjalankan Aplikasi

### Development Mode

```bash
fastapi dev api.py
```

Aplikasi akan berjalan di: `http://localhost:8000`

### Production Mode

```bash
fastapi run api.py
```

## API Endpoints

### 1. Root Endpoint
- **URL**: `/`
- **Method**: GET
- **Response**: Welcome message

```bash
curl http://localhost:8000/
```

### 2. Chat dengan Agent
- **URL**: `/chat`
- **Method**: POST
- **Content-Type**: `application/json`

**Request Body:**
```json
{
  "query": [
    {
      "role": "user",
      "content": "Jadwal KRL dari Jakarta ke Bogor"
    }
  ]
}
```

**Response:**
```json
{
  "response": "Berikut adalah jadwal KRL dari Jakarta ke Bogor..."
}
```

### 3. Generate Security Questions
- **URL**: `/generate-security-questions/{user_id}`
- **Method**: GET

```bash
curl http://localhost:8000/generate-security-questions/123
```

### 4. Verify Security Answer
- **URL**: `/verify-security-answer/{user_id}`
- **Method**: POST

**Request Body:**
```json
{
  "query": [
    {
      "role": "user",
      "content": "Stasiun Bogor"
    }
  ]
}
```

## Konfigurasi Environment Variables Detail

| Variable | Deskripsi | Contoh |
|----------|-----------|---------|
| `DB_HOST` | Host database MySQL | `localhost` atau `127.0.0.1` |
| `DB_USERNAME` | Username database | `root` |
| `DB_PASSWORD` | Password database | `password123` |
| `DB_NAME` | Nama database | `comsphere` |
| `GEMINI_API_KEY` | API Key dari Google Gemini | `AIza...` |
| `GEMINI_MODEL` | Model Gemini yang digunakan | `gemini-1.5-flash` |
| `KRL_SCHEDULE_AUTH` | Token autentikasi API jadwal KRL | `Bearer token` |
| `TRIP_HISTORY_URL` | URL API riwayat perjalanan | `http://localhost:3000/api/trip-history` |
| `TRIP_HISTORY_AUTH` | Token autentikasi API riwayat | `Bearer token` |
| `OTPQUESTION_COUNT` | Jumlah pertanyaan keamanan | `3` |

## Struktur Project

```
compsphere-agent/
├── api.py              # Main FastAPI application
├── llm.py             # LLM integration modules
├── krlRouter.py       # KRL routing and database operations
├── requirements.txt   # Python dependencies
├── .env              # Environment variables (create this)
├── tools/            # AI tools and utilities
│   ├── krlTools.py
│   ├── krlSchdule.py
│   └── trainSeat.py
└── utils/            # Utility functions
    ├── logger.py
    └── trainSeat.py
```

## Troubleshooting

### 1. Database Connection Error
- Pastikan MySQL server berjalan
- Periksa kredensial database di file `.env`
- Pastikan database `comsphere` sudah dibuat

### 2. Gemini API Error
- Pastikan `GEMINI_API_KEY` valid
- Periksa quota API Gemini
- Pastikan model yang digunakan tersedia

### 3. ModuleNotFoundError
```bash
pip install -r requirements.txt
```

### 4. Port Already in Use
```bash
fastapi run api.py --port 8001
```

## Logs

Log aplikasi disimpan dalam file `chatbot.log` di root directory. Log ini mencakup:
- Request dan response chat
- Error database
- Error API eksternal

## Pengembangan

### Menambah Tools Baru

1. Buat file tool baru di folder `tools/`
2. Import dan inisialisasi di `api.py`
3. Tambahkan ke tools list dalam function chat

### Menambah Endpoint Baru

1. Tambahkan function dengan decorator `@app.post()` atau `@app.get()`
2. Definisikan request/response models menggunakan Pydantic
3. Update dokumentasi API

## Lisensi

[Sesuaikan dengan lisensi project Anda]

## Kontribusi

1. Fork repository
2. Buat feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Create Pull Request