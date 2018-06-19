#!/bin/bash
cecho(){
	echo -e "\033[$1m$2\033[0m"
}
cecho 42 OK
cecho 43 OK
cecho 44 Error
cecho 45 XXXXXX
