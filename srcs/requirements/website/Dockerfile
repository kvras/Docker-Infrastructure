FROM debian:11

RUN apt update && apt upgrade -y && apt install -y php

EXPOSE 8080

COPY index.html 433_black.png 433_white.gif /

CMD ["php","-S","0.0.0.0:8080"]

