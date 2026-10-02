#!/usr/bin/env bash
# Render banner.html to ../banner.png at 2x with transparent rounded corners.
set -euo pipefail
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless=new --disable-gpu --hide-scrollbars \
  --default-background-color=00000000 \
  --force-device-scale-factor=2 --window-size=960,360 \
  --virtual-time-budget=5000 \
  --screenshot="$PWD/../banner.png" "file://$PWD/banner.html"
