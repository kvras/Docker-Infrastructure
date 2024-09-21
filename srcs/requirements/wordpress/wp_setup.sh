
sleep 10

service php7.4-fpm start


cd /var/www/html/ 

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

chmod +x /usr/local/bin/wp


chmod -R 755 /var/www/html/wp-content

wp core download --path="/var/www/html" --allow-root

#wp config create --allow-root --dbname=db_wordpress --dbuser=root --dbpass=admin --dbhost=mariadb


wp core install --url="http://jidev.xyz" --title="Your Site Title" --admin_user="root" --admin_password="admin" --admin_email="iguiji.etudes@gmail.com" --allow-root

#echo "('WP_REDIS_HOST', '127.0.0.1');" >> wp-config.php

wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
wp plugin activate redis-cache

service php7.4-fpm stop

php-fpm7.4 -F

