#!/bin/bash

amixer sget Master | grep off > /dev/null
is_muted=$?

if (( is_muted == 0 )); then
  volume=Muted
else
  volume=$(amixer sget PCM | grep % | awk -F '[][]' '{ print $2 }')
fi

echo -e "$volume"
