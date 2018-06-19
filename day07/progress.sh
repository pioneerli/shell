#!/bin/bash
progress(){
while :
do
	echo -ne '\033[43m#\033[0m'
	sleep 0.3
done
}
progress &
cp -r $1 $2
kill $!
