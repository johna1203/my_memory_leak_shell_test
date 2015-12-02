#!/bin/sh

CWD=`pwd`

ps aux | grep shell | grep -v grep | tr -s ' ' | cut -d ' ' -f2 | xargs kill
ps aux | grep vmstat | grep -v grep | tr -s ' ' | cut -d ' ' -f2 | xargs kill
