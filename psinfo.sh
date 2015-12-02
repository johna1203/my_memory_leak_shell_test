#!/bin/sh
echo "ps aux | grep -v grep | grep "${1}" >> /tmp/ps1.txt"
while [ 1 ]
do
  ps aux | grep -v grep | grep "${1}" >> /tmp/ps1.txt
  paste /tmp/ps1.txt
  sleep 5
done >> /tmp/psinfo.dat
