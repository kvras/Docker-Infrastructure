FROM debian:11

RUN apt update && apt upgrade -y && apt install -y redis-server

EXPOSE 6379

COPY tools/redis_setup.sh /

CMD ["sh", "redis_setup.sh"]
