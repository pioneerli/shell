#!/bin/bash
read -p "你的分数，系统将根据你的分数来判定等级:" score
echo $score
if [ $score -ge 90 ];then
	echo "神功盖世"
elif [ $score -ge 80 ];then
	echo "登峰造极"
elif [ $score -ge 70 ];then
	echo "炉火纯青"
elif [ $score -ge 60 ];then
	echo "略有小成"
else
	echo "初学乍炼"
fi
