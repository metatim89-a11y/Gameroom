#!/data/data/com.termux/files/usr/bin/bash
# ./gameroom/.bin/server.sh v2.0
# Auto-sync and serve gameroom

PORT=8080
cd /data/data/com.termux/files/home/gameroom

echo "------------------------------------------------"
echo "Starting Digital Refinery: Auto-Sync & Server"
echo "Port: $PORT"
echo "------------------------------------------------"

# Initial pull to ensure we are up to date
git pull origin main --rebase >> .logs/sync.log 2>&1

# Run sync in background every 5 minutes
(
    while true; do
        /data/data/com.termux/files/home/gameroom/.bin/sync_push.sh
        sleep 300
    done
) &

# Start the server
python3 -m http.server $PORT
