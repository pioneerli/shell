#!/bin/bash
i=0
sum=0
while [ $i -le 100 ]
do
	sum=$[sum+i]
#	let sum=sum+i
#	let sum+=i
	let i++
done

echo $sum
