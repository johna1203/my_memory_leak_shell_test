#!/bin/sh
while [ 1 ]
do
  ps aux | grep -v grep | grep yasuki-client/src/main.py >> /tmp/ps1.txt
    paste /tmp/ps1.txt
    sleep 5
done >> /home/pi/yasuki-client/logs/psinfo.dat
