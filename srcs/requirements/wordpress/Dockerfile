FROM debian:11

RUN apt update && apt upgrade -y && apt install -y php php-cgi php-mysqli php-common php-fpm wget php-redis
RUN echo "listen=0.0.0.0:9000" >> /etc/php/7.4/fpm/pool.d/www.conf

RUN mkdir -p /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN find /var/www/html -type d -exec chmod 755 {} \; 

RUN find /var/www/html -type f -exec chmod 644 {} \;

 
EXPOSE 9000

COPY tools/wp_setup.sh /

#COPY wp-config.php /var/www/html/

CMD ["sh", "wp_setup.sh"]
