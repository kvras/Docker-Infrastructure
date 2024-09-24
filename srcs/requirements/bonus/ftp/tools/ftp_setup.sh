mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty

useradd -m $FTP_USER

echo $FTP_USER:$FTP_PASS | chpasswd

vsftpd /etc/vsftpd.conf

