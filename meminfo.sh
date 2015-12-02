#!/bin/sh
while [ 1 ]
do
    grep 'MemFree:' /proc/meminfo > /tmp/s1.txt
    grep 'Inactive:' /proc/meminfo > /tmp/s2.txt
    paste /tmp/s1.txt /tmp/s2.txt
    sleep 5
done >> /home/pi/yasuki-client/logs/meminfo.dat
