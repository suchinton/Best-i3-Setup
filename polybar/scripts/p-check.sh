#!/bin/bash
Status=$(cat /var/lib/power-profiles-daemon/state.ini | grep -e "Profile")

if [[ $Status == "Profile=performance" ]]
    then echo "異 Performance"
elif [[ $Status == "Profile=balanced" ]]
    then echo "    Balanced"
elif [[ $Status == "Profile=power-saver" ]]
    then echo "    Power-saver"
fi