#!/bin/bash
read -p "第一个数:" num1
read -p "第二个数:" num2
if [ $num1 -eq $num2 ];then
	echo $num1 $num2
elif [ $num1 -lt $num2  ];then
	echo $num1 $num2
else
	echo "$num2" "$num1"
fi

