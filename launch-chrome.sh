#!/bin/bash

# WSL環境でWindows側のChromeを使用するため、/mnt/c/経由でアクセス
CHROME_PATH="/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"

echo "Starting Chrome with remote debugging on port 9222..."

"$CHROME_PATH" \
  --remote-debugging-port=9222 \
  --no-first-run \
  --no-default-browser-check \
  --disable-gpu \
  --user-data-dir=C:\\temp\\chrome-debug > /dev/null 2>&1 &  # 通常のプロファイルと干渉しないよう別ディレクトリを使用

sleep 3  # Chromeの起動に時間がかかるため待機（短すぎると接続エラー）

echo "Getting WebSocket endpoint..."
curl http://localhost:9222/json/version 2>/dev/null | jq .
