# Battery State Notifications ( Indicator ) 

A simple script to display a notification using [notify-send](https://ss64.com/bash/notify-send.html) when your battery is almost full or low.
this script will warn you and try to keep your battery level at the range of ~40-80, according to the 40-80 rule for for lithium ion batteries
here you find some good articles about this : 

1 - [CSmonitor Article](https://www.csmonitor.com/Technology/Tech/2014/0103/40-80-rule-New-tip-for-extending-battery-life)

2 - [Quora Article explaining what is the 40-80 rule](https://www.quora.com/What-is-40-80-rule-for-lithium-ion-batteries)


![preview](http://i.imgur.com/rVGMBK8.png)

# Battery Notification sound 

After searching for some alarm sounds, on Github : ```alarm, :.oga```.

I found that a lot of people use `alarm-clock-elapsed.oga` located at `/usr/share/sounds/freedesktop/stereo/`
you can always change the sound file as you wish.

## Installation :

1. Install `acpi` package :

        sudo apt-get install acpi

2. Clone this repo :
        
        git clone https://github.com/hg8/battery-full-notification.git
        
3. Add the `batteryfull.sh` script as a startup application (Open Dash and search for `Startup Applications`) :

    ![startup application](http://i.imgur.com/pWcq9TW.png)

4. Done!


----


    
