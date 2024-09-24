FROM debian:11

RUN apt update && apt upgrade -y && apt install -y vsftpd

RUN echo "write_enable=YES\nchroot_local_user=YES\n" >> /etc/vsftpd.conf

COPY tools/ftp_setup.sh /

CMD ["sh", "ftp_setup.sh"]
