
service mariadb start


mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${db_wordpress} ;"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin';"
mysql -u root -e "FLUSH PRIVILEGES;"


#GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin';
#mysql -u root -p admin -e "FLUSH PRIVILEGES;"
service mariadb stop

mysqld_safe --port=3306 --bind-address=0.0.0.0

#sed -i 's/bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.conf
#sed -i "s/= mysql/= root/" /etc/mysql/mariadb.conf.d/50-server.conf


#mysqld



