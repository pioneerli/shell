#!/bin/bash
if [ $# -eq 0 ];then
	echo "please input fileName"
	exit 1
elif [ ! -f $1 ];then
	echo "input file is not found" 
	exit 2
fi
for username in $(cat $1)
do
	id $username &> /dev/null
	if [ $? -eq 0 ];then
		echo "$username has exit"
	else
		useradd $username
		echo 1234567 | passwd --stdin $username
	fi
done
