#!/bin/bash                                                                                          
enabled=`xinput list-props "ImPS/2 ALPS GlidePoint" | grep -e "Device Enabled\ (126):\s*1"`

if [ -n "$enabled" ]; then
    xinput set-prop "ImPS/2 ALPS GlidePoint" "Device Enabled" 0
else
    xinput set-prop "ImPS/2 ALPS GlidePoint" "Device Enabled" 1
fi
