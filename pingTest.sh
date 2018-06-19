#/bin/bash
ping -c1 $1 >> /dev/null
if [ $? -eq 0 ];then
	echo "$1可以通信"
else
	echo "$1不可以通信"
fi
