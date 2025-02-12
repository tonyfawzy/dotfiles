#!/bin/zsh

tmpPID="/tmp/screencast.pid"
outputDir="$HOME/screencast"
timeStamp=$(date '+%Y-%m-%d-%H%s')
outputFile="$outputDir/$timeStamp.mp4"

if [ -s $tmpPID ]
then
	kill $(cat $tmpPID)
	rm -rf $tmpPID
else
	ffmpeg -f x11grab -framerate 30 -video_size 1366x768 -i :0.0 -f pulse -i default -pix_fmt yuv420p "$outputFile" & echo $! > $tmpPID
fi

pkill -RTMIN+10 dwmblocks
