#!/bin/bash
set -e

echo "Stopping existing containers..."
docker compose down --remove-orphans --volumes

echo "Building and starting containers..."
docker compose up -d --build

echo ""
echo "✅ Services are starting..."

echo "QScore API running on port 8081"
echo "KafkaHQ running on port 8082"

echo ""
echo "📌 Gitpod will auto-detect and expose these ports."
echo "Check the PORTS tab or browser popups."

echo ""
echo "📜 Last 30 logs from qscore:"
docker compose logs -f --tail=30 qscore
