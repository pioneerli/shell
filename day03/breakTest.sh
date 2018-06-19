#!/bin/bash
for i in `seq 5`
do
	[ $i -eq 3 ] && break
	echo $i
done
echo GameOver
