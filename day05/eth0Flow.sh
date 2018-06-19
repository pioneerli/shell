#/bin/bash
while :
do
	clear
	echo "接到的数据流量"
		ifconfig | head -8 | grep "RX packets"
	echo "发送的数据流量"
		ifconfig | head -8 | grep "TX packets"
	sleep 0.5
done
