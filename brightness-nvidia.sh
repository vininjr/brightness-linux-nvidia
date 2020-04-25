#!/bin/bash
# A script to change your current brightness setting.

screen=$(xrandr | grep connected | grep -v dis | awk '{print $1}')
currentBrightness=$(xrandr --verbose |grep $screen -A 5 |grep Brightness |grep -o '[0-9].*') 

helpFunction()
{
   echo "usage: brightness-nvidia [options]"
   echo " where options are:"
   echo " -inc to increment brightness"
   echo " -dec to decrement brightness"
   echo " -get to show current brightness"
   exit 1
}

getBrightness()
{
	echo "$currentBrightness" | awk '{print $1 * 100 "%"}'
}

incBrightness()
{
	result=$(echo "$currentBrightness" | awk '{print $1 * 100}')
	if [ "$result" -ge 150 ]; then exit 1
	fi
	xrandr --output $screen --brightness $(echo "$(xrandr --verbose |grep $screen -A 5 |grep Brightness |grep -o '[0-9].*')+0.1" | bc)
}

decBrightness()
{
	result=$(echo "$currentBrightness" | awk '{print $1 * 100}')
	if [ "$result" -le 50 ]; then exit 1
	fi
	xrandr --output $screen --brightness $(echo "$(xrandr --verbose |grep $screen -A 5 |grep Brightness |grep -o '[0-9].*')-0.1" | bc)
}

while [ "$#" -gt 0 ]; do case $1 in
  -dec) decBrightness;exit 1;;
  -inc) incBrightness;exit 1;;
  -get) getBrightness;exit 1;;
  *) helpFunction;exit 1;;
esac; shift; done
helpFunction;exit 1;
