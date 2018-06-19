#!/bin/bash

#写一个脚本，实现批量添加 20 个用户，用户名为 user01-20，
#密码为 user 后面跟 5 个随机字符
#description: delete

for i in `seq -f"%02g" 1 20`;do
userdel -r user$i
done



