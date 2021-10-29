sudo -l
timedatectl set-timezone Asia/Almaty
dnf install chrony mariadb-server nginx php php-fpm php-mysqli -y
dnf install https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm -y
dnf install zabbix-server-mysql zabbix-web-mysql zabbix-agent zabbix-get -y 	
setenforce 0
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config
systemctl enable mariadb --now
systemctl enable nginx --now
mysqladmin -u root password

