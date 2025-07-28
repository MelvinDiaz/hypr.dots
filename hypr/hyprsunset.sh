#!/bin/sh
sleep 5

killall -q hyprsunset

current_hour=$(date +%H)

if [ "$current_hour" -ge 18 ] || [ "$current_hour" -le 6 ]; then
    	echo "Change night"
    	hyprsunset -t 5000
  else
	  echo "default hyprsunset"
	  hyprsunset -i
fi
