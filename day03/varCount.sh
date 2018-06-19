#!/bin/bash
i=0
sum=0
while :
do
	read -p "请输入一个数:" num
	[ $num -eq 0 ] && break	
	sum=$[sum+num]
#	let sum=sum+i
#	let sum+=i
#	let i++
done

echo $sum
