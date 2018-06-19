#!/bin/bash
#use case program :
# 	when you input redhat the output is fedora
#	when you input fedora the output is redhat
case $1 in
redhat)
	echo "fedora";;
fedora)
	echo "redhat";;
*)
	echo "your input is not redhat or fedora"
esac
