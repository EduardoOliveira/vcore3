#!/usr/bin/env bash

adb connect 192.168.10.135:5555

adb shell am start x.org.server/.MainActivity
echo "sleeping"
sleep 15 
echo "well rested"

DISPLAY=192.168.10.135:0 $HOME/.KlipperScreen-env/bin/python $HOME/KlipperScreen/screen.py &> /var/log/klipdroid.log & 
