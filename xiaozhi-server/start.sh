#!/bin/sh
set -e

cd /opt/xiaozhi-esp32-server

python app.py &

exec nginx -g "daemon off;"
