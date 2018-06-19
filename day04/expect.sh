#!/bin/bash
expect << EOF
spawn ssh -X 172.25.0.10
expect "connecting" {send "yes\n"}
expect "password"   {send "redhat\n"}
expect "#"	    {send "touch ssh.txt\n"}
expect "#"	    {send "exit\n"}
EOF
