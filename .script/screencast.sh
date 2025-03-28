#!/bin/sh

tmpPID="/tmp/screencast.pid"
outputDir="$HOME/screencast"
timeStamp=$(date '+%Y-%m-%d-%H%s')
outputFile="$outputDir/$timeStamp.mp4"

if [ -s $tmpPID ]
then
	kill $(cat $tmpPID)
	rm -rf $tmpPID
else
	wf-recorder -c libx264 -a -f $outputFile & echo $! > $tmpPID
fi

# pkill -RTMIN+5 waybar
