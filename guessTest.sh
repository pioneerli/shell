#/bin/bash
num=$[RANDOM%10]
echo $num
echo "**************欢迎来到猜数字休闲区******************"
for i in {1,2,3,4,5,6,7,8,9,10}
do
read -p "请输入一个数字（1-10）" var
echo $var
if [ $var -eq $num ];then
	echo "猜对了"
	exit
elif [ $var -gt $num ];then
	echo "猜大了"
else
	echo "猜小了"
fi
done
