#!/bin/bash
case $1 in
redhat)
	echo "fedora";;
fedora)
	echo "redhat";;
*)
	echo "error"
esac 
