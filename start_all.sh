#!/bin/sh

CWD=`pwd`

"${CWD}/meminfo.sh" &
"${CWD}/psinfo.sh" ${1} &
"${CWD}/vmstat.sh" &
