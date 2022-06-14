#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
##echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar Main >>/tmp/polybar1.log & disown
##polybar -q Main &
#polybar -q Mult_bar &

#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

##New##
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#MONITOR=eDP-1 polybar Main &
#
#if [[ xrandr- q | grep 'HDMI1 connected' ]]; then
#    MONITOR=HDMI-1 polybar Mult_bar &
#fi

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

if [[ $(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f4 | cut -d"+" -f2- | uniq | wc -l) == 1 ]]; then
  MONITOR=$(polybar --list-monitors | cut -d":" -f1) TRAY_POS=right polybar Main  &
else
  primary=$(xrandr --query | grep primary | cut -d" " -f1)

  for m in $screens; do
    if [[ $primary == $m ]]; then
        MONITOR=$m TRAY_POS=right polybar Mult_bar &
    else
        MONITOR=$m TRAY_POS=none polybar Main &
    fi
  done
fi

echo "Bars launched..."