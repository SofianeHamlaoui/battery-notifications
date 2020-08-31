#!/usr/bin/env bash



# making a notif function 

notify_me () {
	notify-send -u critical -t 0 -i "$PWD/batteryfull.png" "$1" "$2"
	paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
}

while true
do
    export DISPLAY=:0.0
    battery_percent=$(cat /sys/class/power_supply/BAT0/capacity)
    if on_ac_power; then
        if [ "$battery_percent" ">" "94" ]; then
		notify_me "Battery is almost fully charged." "You can unplug the charger now"
        fi
    fi
    sleep 240 # 4 minutes
done
