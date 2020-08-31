#!/usr/bin/env bash
while true
do
    export DISPLAY=:0.0
    battery_percent=$(cat /sys/class/power_supply/BAT0/capacity)
    if on_ac_power; then
        if [ "$battery_percent" -gt 96 ]; then
            notify-send -i "$PWD/batteryfull.png" "Battery full." "Level: ${battery_percent}% "
	    paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
        fi
    fi
    sleep 240 # 4 minutes
done
