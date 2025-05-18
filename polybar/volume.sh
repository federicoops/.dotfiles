#!/bin/bash

# Get volume
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | head -n1)

# Get mute status
mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

# Output based on mute
if [ "$mute" = "yes" ]; then
    echo "MUTE"
else
    echo "VOL $volume"
fi
