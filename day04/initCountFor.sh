#!/bin/bash
echo ***********************求和小工具***********************
sum=0
read -p "请输入一个数" num
last=${num:-100}
for i in `seq $last`
do
	sum=$[sum+i]
done
echo $sum
