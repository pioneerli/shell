#/bin/bash
for filename in $(ls *.$1)
do
	mv $filename ${filename%.*}.$2 
done
