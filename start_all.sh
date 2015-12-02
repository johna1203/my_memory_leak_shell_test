#!/bin/sh

CWD=`pwd`

echo $1
# "${CWD}/meminfo.sh" &
"${CWD}/psinfo.sh" ${1}
# "${CWD}/vmstat.sh" &
