#!/bin/bash
if [ $# -eq 0 ];then
	echo "Usage: $0 指定域名"
	exit 1
fi
#判断/etc/httpd/conf.d/vhosts.conf是否存在，不存在则创建
if [ ! -e "/etc/httpd/conf.d/vhosts.conf" ];then
	touch /etc/httpd/conf.d/vhosts.conf	
fi
#检测虚拟主机是否添加过
egrep ".*ServerName.*$1.*" /etc/httpd/conf.d/vhosts.conf
if [ $? -eq 0 ];then
	echo "虚拟主机 $1 已存在"
	exit 2
fi
#截取域名以.分割的第一部分
firstDomain=$(echo $1 | cut -d. -f1)
#为虚拟主机的访问路径添加主页文件
if [ ! -e "/var/www/$firstDomain" ];then
	mkdir /var/www/$firstDomain
fi
cd /var/www/$firstDomain
echo $1 > ./index.html
#新建虚拟Web主机
echo "<VirtualHost *:80>
ServerName $1
DocumentRoot /var/www/$firstDomain
</VirtualHost>" >> /etc/httpd/conf.d/vhosts.conf
#启动httpd服务并设置为开机自启
systemctl restart httpd.service
systemctl enable httpd.service

#在本机追加域名解析记录
echo "192.168.122.37 $1" >> /etc/hosts
#访问Desktop的虚拟web
firefox $1
