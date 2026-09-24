#!/bin/sh
set -e

cd /opt/xiaozhi-esp32-server
mkdir -p data

if [ -f /etc/secrets/.config.yaml ]; then
  cp /etc/secrets/.config.yaml data/.config.yaml
elif [ -f .config.yaml ]; then
  cp .config.yaml data/.config.yaml
else
  echo 'ERROR: Render Secret File .config.yaml not found'
  exit 1
fi

echo 'Config file installed successfully'
python app.py &
exec nginx -g "daemon off;"
