#/bin/bash
for username in $(cat user.txt)
do
	useradd $username
	echo "123456" | passwd --stdin $username
done
