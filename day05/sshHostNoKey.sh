#!/bin/bash
expect << EOF
spawn ssh -X -o StrictHostKeyChecking=no  172.25.0.10
expect "password"   {send "redhat\n"}
expect "#"	    {send "yum -y install httpd \n"}
expect "#"	    {send "exit\n"}
EOF
