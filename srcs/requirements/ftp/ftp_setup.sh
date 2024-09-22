mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty

useradd -m admin

echo "admin:admin" | chpasswd

vsftpd /etc/vsftpd.conf

