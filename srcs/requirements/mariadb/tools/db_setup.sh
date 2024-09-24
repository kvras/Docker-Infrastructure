
service mariadb start


mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME} ;"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin';"
mysql -u root -e "FLUSH PRIVILEGES;"


service mariadb stop

mysqld_safe --port=3306 --bind-address=0.0.0.0
