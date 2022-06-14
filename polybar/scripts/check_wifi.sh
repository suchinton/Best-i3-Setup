#!/bin/sh 

connected=$(nmcli -fields WIFI g)
if [[ "$connected" == "enabled" ]]; then
	echo "睊 "
elif [[ "$connected" == "disabled" ]]; then
	echo "直 "
fi