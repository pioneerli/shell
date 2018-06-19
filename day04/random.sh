#!/bin/bash
x='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
echo ${x:$[RANDOM%62]:1}
