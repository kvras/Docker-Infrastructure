all :
	cd srcs && docker-compose up -d

clean:
	cd srcs && docker-compose down --rmi all -v
