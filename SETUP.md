# NEWAY LAW - Setup Guide

This guide details the complete setup process for the NEWAY LAW application, starting from scratch. It covers database initialization, LLM provider setup (Ollama), and application deployment.

## Prerequisites

### System Requirements

| Component | Minimum (Functional but Slow) | Recommended (Fast & Smooth) |
| :--- | :--- | :--- |
| **Performance** | **Expect Lag**. Usable for testing only. | **Real-Time**. Fast inference & retrieval. |
| **GPU** | None (CPU Inference) | NVIDIA RTX 3060+ (6GB+ VRAM) or Apple M-Series |
| **RAM** | 8 GB | 16 GB+ |
| **CPU** | Modern i5 / Ryzen 5 | i7 / Ryzen 7 or Apple Silicon |
| **Storage** | 10 GB HDD | 20 GB+ NVMe SSD |

### Software Tools
Ensure you have the following installed on your system:

1.  **Docker Desktop** (or Docker Engine on Linux)
2.  **Ollama** (for local model inference)

---

## Step 1: Clone the Repository

First, clone the repository (or download the "Travel Kit" folder) to your local machine:

```bash
git clone <repository-url>
cd NEWAY_LAW
```

---

## Step 2: Docker Compose (Easiest)

This method runs both the database and the application in containers.

### 1. Run
```bash
docker compose up -d
```
*Or use the helper scripts:*
*   **Mac/Linux**: `./start.sh`
*   **Windows**: `start.bat`

The app will be available at `http://localhost:8000`.

---

## Step 3: Ollama Setup

### 1. Install Ollama
Download from [ollama.com](https://ollama.com).

### 2. Pull the Model
Open your terminal and run:
```bash
ollama pull qwen3:4b
```

### 3. Start Ollama
Ensure the Ollama app is running in the background.

---

## Troubleshooting

### 1. "Connection Refused" (Database)
*   **Cause**: The database container isn't running or hasn't finished starting.
*   **Fix**: Run `docker ps` to check if `pgvector_container` is up. If not, run `docker compose up -d`.

### 2. "Ollama Connection Error"
*   **Cause**: The app cannot reach Ollama on your host machine.
*   **Fix**:
    *   **Mac/Windows**: Ensure `OLLAMA_BASE_URL` is `http://host.docker.internal:11434`.
    *   **Linux**: Ensure you started Ollama with `OLLAMA_HOST=0.0.0.0` or use the host IP.

### 3. "Module Not Found"
*   **Cause**: You are trying to run Python manually but haven't installed dependencies.
*   **Fix**: Use the Docker method (Option A). It handles all dependencies for you.
