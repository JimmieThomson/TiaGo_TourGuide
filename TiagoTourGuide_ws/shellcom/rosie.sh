#!/bin/bash
sshpass -p welc0me! ssh vxlab@10.234.2.50 -i TiagoTeam << 'EOF'
export DISPLAY=:0
google-chrome "https://www.youtube.com/embed/vUs3Zo9OkpA?=SdZCuDh6Z8DoV4KD&autoplay=1" --start-fullscreen &
sleep 2
DISPLAY=:0 xdotool key F5

# Wait for the duration of the video (20 seconds)
sleep 21

pkill chrome
EOF