FROM debian:11

RUN  apt update && apt upgrade -y && apt install -y curl

RUN curl -L https://github.com/portainer/portainer/releases/download/2.21.1/portainer-2.21.1-linux-amd64.tar.gz -o portainer.tar.gz
RUN tar -xzvf portainer.tar.gz && mv portainer /usr/local/bin/portainer && chmod +x /usr/local/bin/portainer


RUN mkdir /data

EXPOSE 9000


CMD ["/usr/local/bin/portainer/portainer"]

