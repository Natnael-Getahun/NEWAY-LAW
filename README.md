# NEWAY: The Law at Your Hands🇪🇹⚖️

**Your Private, AI-Powered Legal Assistant for Ethiopian Capital Markets Laws, Directives, and Rulebooks.**

This project is a specialized AI chat system designed to navigate the complex landscape of Ethiopian Capital Market regulations. It allows legal professionals, researchers, and the public to ask natural language questions and receive accurate, cited answers based on official directives and proclamations.

---

##  [Start Here: Setup Guide (SETUP.md)](SETUP.md)

###  Docker Quick Start (Recommended)
If you just want to run the app without looking at the code:

1.  **Install Docker Desktop** & **Ollama**.
2.  **Pull the Model**: `ollama pull qwen3:4b`
3.  **Run**:
    *   **Mac/Linux**: `./start.sh`
    *   **Windows**: `start.bat`
4.  Open **http://localhost:8000**.

👉 **[Full Setup Instructions](SETUP.md)**

---

## Why Use This?

### 100% Private & Local
Your data never leaves your machine. Unlike cloud-based AI, this system runs entirely on your local hardware using **Ollama** or local HuggingFace models. Perfect for handling sensitive legal inquiries without privacy concerns.

###  Specialized Legal Knowledge
Generic AI models often hallucinate legal details. This system is grounded in a curated database of **Ethiopian Capital Market Laws**, ensuring that every answer is derived directly from the source text.

### Precise Citations
Trust but verify. Every response includes a **"Sources"** section that points you to the exact **Directive, Article, and Part** used to generate the answer, so you can cross-reference the official documents.

### Efficient & Accessible
Designed to run on consumer hardware. You don't need a massive server farm; a standard laptop with a decent GPU (or even just a good CPU) is enough to run our optimized 4B parameter models.

---

##  System Requirements

Before you begin, ensure your system meets these requirements:

## 💻 System Requirements

| Component | Minimum (Functional but Slow) | Recommended (Fast & Smooth) |
| :--- | :--- | :--- |
| **Performance** | **Expect Lag** (5-10 sec/token). Usable for testing. | **Real-Time**. Instant retrieval and streaming. |
| **GPU** | None (CPU Inference) | NVIDIA RTX 3060+ (6GB+ VRAM) or Apple M1/M2/M3 |
| **RAM** | 8 GB - 12 GB | 16 GB+ |
| **CPU** | Modern i5 / Ryzen 5 | i7 / Ryzen 7 or Apple Silicon |
| **OS** | Windows 10/11, Linux, macOS | Linux (Ubuntu 22.04+) or macOS |
| **Storage** | 10 GB Free Space | 20 GB+ (NVMe SSD recommended) |

---



##  Documentation

-   **[Setup Guide (SETUP.md)](SETUP.md)**: Installation instructions.

##  License

[MIT License](LICENSE)
