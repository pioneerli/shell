#!/bin/bash
x='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
for i in `seq 8`
do
tmp=${x:$[RANDOM%62]:1}
pass=${pass}$tmp
done
echo $pass
mail -s 'Check Mail' root 
