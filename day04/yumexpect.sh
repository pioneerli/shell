#!/bin/bash
expect << EOF
spawn ssh -X -o StrictHostKeyChecking=no 172.25.0.10
expect "password"   {send "redhat\n"}
expect "#"	    {send "touch ssh.txt\n"}
expect "#"	    {send "exit\n"}
EOF
