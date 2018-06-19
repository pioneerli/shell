#!/bin/bash
read -p "请输入用户名:" user
[ -z $user ] && exit
read -p "请输入密码:" pass
pass=${pass:-123456}
useradd $use
echo "$pass" | passwd --stdin $user
