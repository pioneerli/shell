#!/bin/bash
for i in $(seq -w 1 20)
do
	userdel -r ceshi$i
done
