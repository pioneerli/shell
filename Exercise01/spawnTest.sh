#!/bin/bash
expect << EOF
	if [ "1"=="1" ];then
		echo haha
	fi
EOF
