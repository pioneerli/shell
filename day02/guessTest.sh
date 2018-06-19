#/bin/bash
num=$[RANDOM%10]
i=0
echo $num
echo "**************欢迎来到猜数字休闲区******************"
while :
do
read -p "请输入一个数字（1-10）" var
echo $var
let i++
if [ $var -eq $num ];then
	echo "猜对了,你一共猜了$i 次"
	exit
elif [ $var -gt $num ];then
	echo "猜大了"
else
	echo "猜小了"
fi
done
