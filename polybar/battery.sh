#!/bin/bash

# Get the battery status and percentage
BATTERY_INFO=$(upower -i /org/freedesktop/UPower/devices/battery_macsmc_battery)

# Extract the battery percentage and status
PERCENTAGE=$(echo "$BATTERY_INFO" | grep -i percentage | awk '{print $2}')
STATUS=$(echo "$BATTERY_INFO" | grep -i state | awk '{print $2}')

# Output the status and percentage
if [[ "$STATUS" == "charging" ]]; then
    echo "[Charging $PERCENTAGE]"
else
    echo "[Battery $PERCENTAGE]"
fi
