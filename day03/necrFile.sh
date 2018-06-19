#/bin/bash
case $1 in
-n)
	touch $2;;
-e)
	vim $;;
-c)
	cat $2;;
-r)
	rm -rf $2;;
*)
	echo "$0 (-n|-e|-c|-r) file";;
esac
