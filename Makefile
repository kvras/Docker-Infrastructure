all :
	mkdir -p /home/miguiji/data/mariadb /home/miguiji/data/wordpress
	cd srcs && docker-compose up -d

fclean:
	cd srcs && docker-compose down --rmi all && rm -rf /home/miguiji/data/wordpress /home/miguiji/data/mariadb

re : clean all