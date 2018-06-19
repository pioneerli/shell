#!/bin/bash
for i in `seq 5`
do
	[ $i -eq 3 ] && exit
	echo $i
done
echo GameOver
