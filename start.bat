@echo off
echo 🚀 Starting ECMA RAG...

:: Check if Docker is running
docker info >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Docker is not running. Please start Docker Desktop.
    pause
    exit /b
)

:: Start containers
echo 📦 Spinning up containers...
docker compose up -d --build

:: Wait a bit
echo ⏳ Waiting for application to initialize...
timeout /t 5 /nobreak >nul

echo ✅ Done! App is running at http://localhost:8000
pause
