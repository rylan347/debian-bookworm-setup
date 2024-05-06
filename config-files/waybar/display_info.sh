#!/bin/bash
# Script to fetch and format display information for Waybar

wlr-randr --output eDP-1  --pos 0,0 --mode 1920x1080
wlr-randr --output HDMI-A-1 --pos 1920,0 --mode 1920x1080

# Get display information using wlr-randr or similar tools
display_info=$(wlr-randr | grep 'connected' | awk '{print $1, $3}')  # Adjust as necessary to format output

# Check if there's any output, provide a default message if not
if [ -z "$display_info" ]; then
    echo "No external displays"
else
    echo "$display_info"
fi
