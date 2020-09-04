# Battery State Notifications ( Indicator ) 

A simple script to display a notification using [notify-send](https://ss64.com/bash/notify-send.html) when your battery is almost full or low.
this script will warn you and try to keep your battery level at the range of ~40-80, according to the 40-80 rule for for lithium ion batteries
here you find some good articles about this : 

1 - [CSmonitor Article](https://www.csmonitor.com/Technology/Tech/2014/0103/40-80-rule-New-tip-for-extending-battery-life)

2 - [Quora Article explaining what is the 40-80 rule](https://www.quora.com/What-is-40-80-rule-for-lithium-ion-batteries)
# Requirements : 
```
pm-utils
```
# Battery Notification sound 

After searching for some alarm sounds, on Github : ```alarm, :.oga```.

I found that a lot of people use `alarm-clock-elapsed.oga` located at `/usr/share/sounds/freedesktop/stereo/`
you can always change the sound file as you wish.

# Screenshots :

### Full :
![preview](https://i.imgur.com/pf27u7w.png)

### Low :
![preview](https://i.imgur.com/zLqcAFj.png)

## Installation :

1. Clone this repo :
        
        git clone https://github.com/SofianeHamlaoui/battery-notifications.git
        
        
2. Run the following commands : 

```
$ cd battery-notifications && mkdir /usr/bin/batterynotif && cp batterynotif /usr/bin/batterynotif/batterynotif
```
3. Add this to your i3 config file

```
exec_always --no-startup-id exec batterynotif
```



----


    
