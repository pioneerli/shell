#!/bin/bash
ip=$(ifconfig eth0 | awk '/inet /{print $2}')
echo "本机IP地址为:$ip"
cpu=$(uptime | awk '{print $10}')
echo "本机CPU最近5分钟的负载是:$cpu"
net_in=$(ifconfig eth0 | awk '/RX p/{print $5}')
echo "入站网卡流量为$net_in"
net_out=$(ifconfig eth0 | awk '/TX p/{print $5}')
echo "出站网卡流量为$net_out"
menFree=$(free | awk '/^Mem/{print $4}')
echo "内存剩余流量为$menFree"
diskFree=$(df | awk '/\/$/{print $4}')
echo "根分区剩余容量为$diskFree"
users=$(cat /etc/passwd | wc -l)
echo "计算机账户数量为$users 个"
loginUsers=$(who | wc -l)
echo "当前登录账户为$loginUsers"
processNum=$(ps -aux | wc -l)
echo "当前开启的进程数量为$processNum 个"
softNum=$(rpm -qa | wc -l)
echo "本机已安装的软件包有$softNum 个"

