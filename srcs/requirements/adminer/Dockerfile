FROM debian:11

RUN apt update && apt upgrade -y && apt install -y php wget && apt-get install -y php-mysql &&  wget https://www.adminer.org/latest.php -O index.php


CMD ["php", "-S", "0.0.0.0:8000"]


