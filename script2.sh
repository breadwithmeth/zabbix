systemctl enable php-fpm --now
nginx -t
systemctl restart nginx
echo '<?php phpinfo(); ?>' >> /usr/share/nginx/html/index.php
dnf install https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm -y
dnf install zabbix-server-mysql zabbix-web-mysql zabbix-agent zabbix-get -y

