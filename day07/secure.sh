#!/bin/bash
awk '/Failed password/{print $11}' /var/log/secure | awk '{ip[$1]++}END{for(i in ip){print ip[i],i}}' | awk '$1>3{print "远程登录密码错误3次以上的IP:",$2}'
awk '/Invalid user/{print $10}' /var/log/secure | awk '{ip[$1]++}END{for(i in ip){print ip[i],i}}' | awk '$1>3{print "远程登录用户错误三次以上的IP:",$2}'
