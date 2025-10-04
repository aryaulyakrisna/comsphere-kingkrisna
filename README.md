# 🚄 RailBot - AI-Powered Railway Assistant

RailBot adalah asisten perjalanan kereta berbasis RAG (Retrieval-Augmented Generation) serta fitur keamanan KBA (Knowledge Base Aunthentication) atau sistem authorisasi berbasis pengetahuan dimana sistem pertanyaan didapatkan dari history perjalanan pengguna, sehingga hanya pengguna yang dapat mengaksesnya. Sistem ini dirancang untuk mendampingi pengguna layanan KAI dalam merencanakan dan melakukan perjalanan dengan lebih mudah dan efisien.

## ✨ Fitur Utama

### 🗺️ Trip Planner KRL
Membantu pengguna merencanakan perjalanan KRL dengan memberikan informasi rute, jadwal, dan estimasi waktu tempuh secara real-time.

### 🧭 Panduan Perjalanan
Memberikan panduan lengkap untuk perjalanan Anda, termasuk informasi stasiun, fasilitas, dan tips perjalanan yang berguna.

### 🎫 Pencarian Seat Terbaik
Mencari dan merekomendasikan seat terbaik untuk berbagai jenis transportasi:
- **Kereta Lokal** - KRL dan kereta komuter
- **Kereta Non-Lokal** - Kereta jarak jauh (Argo, ekonomi, eksekutif)
- **Plane Train** - Layanan kereta bandara dan premium

Sistem akan memberikan rekomendasi berdasarkan stasiun awal dan tujuan Anda dengan mempertimbangkan ketersediaan, harga, dan kenyamanan.

## 🏗️ Arsitektur Sistem

RailBot dibangun dengan arsitektur modern yang terdiri dari:

```
├── backend/              # Backend API (Node.js)
├── frontend/             # User Interface (React/Next.js)
├── compsphere-agent/     # AI Agent Service (FastAPI + Python)
├── db/                   # Database dumps (SQL)
```

## 🚀 Cara Menjalankan

### Prerequisites

Pastikan Anda telah menginstall:
- Node.js (v16 atau lebih tinggi)
- npm atau yarn
- Python 3.8+
- MySQL/MariaDB
- pip (Python package manager)

### 1️⃣ Setup Database

Buat dua database berikut di MySQL:

```sql
CREATE DATABASE kai;
CREATE DATABASE t_comsphere;
```

Import SQL dumps yang tersedia di direktori `db/`:

```bash
mysql -u username -p kai < db/kai.sql
mysql -u username -p t_comsphere < db/t_comsphere.sql
```

### 2️⃣ Konfigurasi Environment

Copy file `.env.example` dan buat file `.env` di root directory:

```bash
cp .env.example .env
```

### 3️⃣ Jalankan Backend

```bash
cd backend
npm install
npm run dev
```

Backend akan berjalan di `http://localhost:3000` (atau port yang dikonfigurasi).

### 4️⃣ Jalankan Frontend

Buka terminal baru:

```bash
cd frontend
npm install
npm run dev
```

Frontend akan berjalan di `http://localhost:5173` (atau port yang dikonfigurasi).

### 5️⃣ Jalankan Microservices Agent

Buka terminal baru:

```bash
cd compsphere-agent
pip install -r requirements.txt
fastapi dev
```

AI Agent service akan berjalan di `http://localhost:8000`.

## 📱 Menggunakan RailBot

1. Buka browser dan akses `http://localhost:5173`
2. Masuk dengan existing user atau daftar
```bash
username: aryaulyakrisna177
password: AryaAdmin
```
3. Mulai chat dengan RailBot
4. Tanyakan tentang:
   - "Bagaimana cara pergi dari Stasiun Gambir ke Stasiun Yogyakarta?"
   - "Cari seat kereta terbaik untuk perjalanan Jakarta-Surabaya besok"
   - "Berikan panduan perjalanan KRL dari Bogor ke Jakarta Kota"

## 🛠️ Tech Stack

### Frontend
- React/Next.js
- TailwindCSS
- Axios

### Backend
- Node.js
- Express.js
- MySQL

### AI Agent
- Python
- FastAPI
- Gemini API
---

⭐ Jika project ini membantu Anda, berikan star di repository ini!
