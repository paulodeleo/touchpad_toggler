#!/bin/bash                                                                                          
enabled=`xinput list-props "FSPPS/2 Sentelic FingerSensingPad" | grep -e "Device Enabled\ (132):\s*1"`

if [ -n "$enabled" ]; then
    xinput set-prop "FSPPS/2 Sentelic FingerSensingPad" "Device Enabled" 0
else
    xinput set-prop "FSPPS/2 Sentelic FingerSensingPad" "Device Enabled" 1
fi
