FROM debian:11

RUN apt update && apt upgrade -y && apt install -y php

EXPOSE 8080

COPY tools/index.html tools/433_2.gif /

CMD ["php","-S","0.0.0.0:8080"]

