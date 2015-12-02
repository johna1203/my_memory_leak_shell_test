#!/bin/sh

CWD=`pwd`

"${CWD}/meminfo.sh" &
"${CWD}/psinfo.sh" &
"${CWD}/vmstat.sh" &
