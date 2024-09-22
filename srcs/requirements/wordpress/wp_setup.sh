
service php7.4-fpm start


cd /var/www/html/ 

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

chmod +x /usr/local/bin/wp


chmod -R 755 /var/www/html/wp-content

wp core download --path="/var/www/html" --allow-root



wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=$WP_MAIL --allow-root


wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
wp plugin activate redis-cache

service php7.4-fpm stop

php-fpm7.4 -F

