#!/bin/bash

echo "Starting Container....."
echo "Starting app.."
python /root/app/docker-session/sample-app/tabledef.py
python /root/app/docker-session/sample-app/dummy.py
python /root/app/docker-session/sample-app/app.py
#Start SSHD
/usr/sbin/sshd -D
