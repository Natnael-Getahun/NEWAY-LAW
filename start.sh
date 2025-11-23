#!/bin/bash

echo "🚀 Starting ECMA RAG..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
  echo "Error: Docker is not running. Please start Docker Desktop."
  exit 1
fi

# Start containers
echo "📦 Spinning up containers..."
docker compose up -d --build

# Wait for app to be ready (simple sleep for now, could be a healthcheck loop)
echo "⏳ Waiting for application to initialize..."
sleep 5

echo "✅ Done! App is running at http://localhost:8000"
