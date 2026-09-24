#!/bin/sh
set -e

cd /opt/xiaozhi-esp32-server

mkdir -p data
cp /etc/secrets/.config.yaml data/.config.yaml

python app.py &

exec nginx -g "daemon off;"
