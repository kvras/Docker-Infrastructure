FROM debian:11

RUN apt clean && apt update -y && apt upgrade -y && apt install -y mariadb-server

COPY db_setup.sh /

EXPOSE 3306

CMD ["sh", "db_setup.sh"]

