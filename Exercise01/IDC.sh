#/bin/bash
for ip in $(cat /root/shell/Exercise01/ipTexts.txt)
do
expect << EOF
spawn	ssh -o StrictHostKeyChecking=no root@$ip
expect "password" {send "redhat\r"}
expect "#"	  {send "wget http://192.168.122.37/a.html -O /tmp/a.html\r"}
expect "#"	  {send "exit\r"}
expect "eof"	
EOF
done
