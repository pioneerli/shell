#!/bin/bash
for i in `seq 5`
do
	[ $i -eq 3 ] && continue
	echo $i
done
echo GameOver
