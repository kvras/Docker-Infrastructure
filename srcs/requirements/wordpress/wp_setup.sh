
cd /var/www/html

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp
chmod +x /usr/local/bin/wp
wp core download --path="/var/www/html" --allow-root

wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb

wp config set --allow-root WP_REDIS_HOST 'redis'
wp config set --allow-root WP_REDIS_PORT 6379
wp config set --allow-root WP_REDIS_DATABASE 0

wp config set --allow-root WP_CACHE 'true'

wp config set --allow-root FS_METHOD 'direct'

wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASS --admin_email=$WP_EMAIL --allow-root

chmod -R 777 /var/www/html/wp-content

wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
wp plugin activate redis-cache --allow-root


php-fpm7.4 -F

