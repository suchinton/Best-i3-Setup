# script to Tiny-launch polybar

#!/usr/bin/env bash

echo "---" | tee -a /tmp/polybar2.log
polybar drop 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."