#!/bin/bash
num=$(who | wc -l)
[ $num -gt 4 ] && mail -s 'Error' root < /root/mail
