#!/bin/bash

TARGET=0
for d in /sys/class/backlight/*; do
  [ -w "$d/brightness" ] || continue
  max=$(cat "$d/max_brightness")
  [ "$TARGET" -gt "$max" ] && TARGET=$max # Avoid write errors on panels with a lower max
  echo "$TARGET" > "$d/brightness"
  break
done
exit 0 # No backlight (VM, desktop PC) is not a failure
