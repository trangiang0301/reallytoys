FROM ghcr.nju.edu.cn/xinnan-tech/xiaozhi-esp32-server:server_latest
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
