#!/bin/bash
for i in `ls /root/day04/*.$1`
do
	mv $i ${i%.*}.$2
done
