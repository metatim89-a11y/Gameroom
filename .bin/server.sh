#!/bin/bash
# Master Gateway Controller - v3.5
PORT=${1:-8080}
ROOT="/data/data/com.termux/files/home/gameroom"

# Force clear the port before starting
PID=$(lsof -ti:$PORT)
if [ ! -z "$PID" ]; then
    echo "⚠️ Port $PORT occupied by PID $PID. Killing..."
    kill -9 $PID
    sleep 1
fi

python -m http.server $PORT --directory $ROOT > $ROOT/.logs/gateway.log 2>&1 &
echo -e "🚀 \e[1;32mGateway Online:\e[0m http://localhost:$PORT"
