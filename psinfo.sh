#!/bin/sh
echo "ps aux | grep -v grep | grep "${1}" >> /tmp/psinfo.dat"
while [ 1 ]
do
  ps aux | grep -v grep | grep ${1} >> /tmp/psinfo.dat
  sleep 5
done
