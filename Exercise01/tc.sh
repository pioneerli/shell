#!/bin/bash
#记录文件总数的变量
fileNum=0
#当前文件的行数
currentFileRow=0
#所有文件的行数
totalRow=0
for file in $(find /usr/share/doc/ -type f)
do
	file $file | egrep -w 'text'
	if [ $? -eq 0 ];then
		currentFileRow=$(cat $file | wc -l)
		echo "文本文件$file,一共$currentFileRow 行"
		let fileNum++
		let totalRow+=$currentFileRow
	fi
done
echo "一共统计了$fileNum 个文件，累计总行数:$totalRow"
