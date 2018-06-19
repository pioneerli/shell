#!/bin/bash
read -p "第一个数：" var1
read -p "第二个数：" var2
read -p "第三个数：" var3
num=$var1
if [ $num -lt $var2 ];then
	num=$var2
elif [ $num -lt $var3 ];then
	num=$var3
fi
echo $num
