#!/bin/bash
read -p "第一个数:" num1
read -p "第二个数:" num2
read -p "第三个数:" num3
numArray=($num1 $num2 $num3)
arrayLen=${#numArray[*]}
echo $arrayLen
for ((i=0;i < $[arrayLen-1];i++)) 
do
echo $i
for  ((j=0;j < $[arrayLen-i-1 ]; j++))
do
echo ${numArray[$j]}
if [ ${numArray[$j]} -gt ${numArray[$[j+1]]} ];then 
		tmp=${numArray[$j]}
		numArray[$j]=${numArray[$[j+1]]}
		numArray[$[j+1]]=$tmp
fi
done
done

echo ${numArray[*]}
