#!/bin/bash 

TIME=`uptime |awk '{print $1}'`

if [ $TIME >='06:00:00' ] ; then
 ~/.local/bin/lightmode.sh 

elif [ ${TIME}>='17:00:00' ]; then 
 ~/.local/bin/darkmode.sh 
fi

