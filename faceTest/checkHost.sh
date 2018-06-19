#/bin/bash
for i in {1..255}
do
	ping -c1 -i0.2 -W1 176.130.3.$i > /dev/null
	if [ $? -eq 0 ];then
		echo "176.130.3.$i UP"
	else
		echo "176.130.3.$i DOWN"
	fi
done
