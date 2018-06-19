#!/bin/bash
random=$[RANDOM%3+1]
echo **************欢迎来到猜拳小游戏*****************

echo 1代表石头 2代表剪刀 3代表布
echo $random
read -p "请出拳" fist
case $fist in
1)
	if [ $random -eq 1 ];then
		echo "This game draw" 
	elif [ $random -eq 2 ];then
		echo "Congratulation YOU WIN!!!"
	else
		echo "Sorry YOU LOST!!!" 
	fi;;
2)
	if [ $random -eq 1 ];then
		echo "Sorry YOU LOST!!!"
	elif [ $random -eq 2 ];then
		echo "This game draw"
	else
		echo "Congratulation YOU WIN!!!"
	fi;; 	
3)
	if  [ $random -eq 1 ];then
		echo "Congratulation YOU WIN!!!"
	elif  [ $random -eq 2 ];then
		echo "Sorry YOU LOST!!!"
	else
		echo "This game draw"
	fi;;
*)
	echo "请收入数字（1-3）";;
esac
