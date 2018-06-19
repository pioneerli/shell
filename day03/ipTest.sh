#!/bin/bash
for ip in `seq 254`
do
	ping  -i0.1 -W1 -c2 "176.130.9.$ip" &> /dev/null 
	if [ $? -eq 0 ];then
		echo "176.130.9.$ip 已开机"
	else
		echo "176.130.9.$ip 没开机"
	fi
done
