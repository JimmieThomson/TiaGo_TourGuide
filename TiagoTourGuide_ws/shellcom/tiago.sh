#!/bin/bash
sshpass -p welc0me! ssh vxlab@10.234.2.50 -i TiagoTeam << 'EOF'
export DISPLAY=:0
google-chrome "https://www.youtube.com/embed/4kXEcYhs4y8?autoplay=1&controls=0&fs=1" --start-fullscreen &

# Wait for the duration of the video (2 minutes and 6 seconds)
sleep 128

pkill chrome
EOF