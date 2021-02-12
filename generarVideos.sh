#!/bin/sh
ffmpeg -s 1920x1080 -v verbose -f x11grab -y -r 60 -i :0.0+1366,0 -vcodec mpeg4 -f pulse -i alsa_input.pci-0000_03_00.6.analog-stereo -preset ultrafast -threads 0 -ar 44100 -acodec libmp3lame -ab 192k -ac 2 output.mp4

