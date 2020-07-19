#!/usr/bin/env bash
#
# /etc/acpi/events/lenovo-mutemic.sh
#
# Authors:
#  Iyyel <github.com/iyyel>
#
# lenovo thinkpad microphone mute script
#

INPUT_DEVICE="'Capture'"
USER="iyyel"
if amixer sget $INPUT_DEVICE,0 | grep '\[on\]' ; then
    su $USER -c 'amixer -q sset Capture nocap'
    amixer -q sset $INPUT_DEVICE nocap
    echo "0 blink" > /proc/acpi/ibm/led
else
    su $USER -c 'amixer -q sset Capture cap'
    amixer -q sset $INPUT_DEVICE cap
    echo "0 on" > /proc/acpi/ibm/led
fi
