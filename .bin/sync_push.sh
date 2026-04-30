#!/data/data/com.termux/files/usr/bin/bash
# ./gameroom/.bin/sync_push.sh v1.0
# Auto-commit and push changes to GitHub

cd /data/data/com.termux/files/home/gameroom
git add .
if ! git diff-index --quiet HEAD; then
    git commit -m "Auto-sync: $(date '+%D %I:%M %p')"
    git push origin gh-pages >> .logs/sync.log 2>&1
fi
