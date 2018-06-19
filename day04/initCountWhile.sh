#!/bin/bash
echo ***************欢迎来到求和小程序*******************
read -p "请输入一个数" num
num=${num:-100}
sum=0
i=1
while [ $i -le $num ]
do
	sum=$[sum+i]
	let i++
done
echo "1到$num 的和为$sum"  
