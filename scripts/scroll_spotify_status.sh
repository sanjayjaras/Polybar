#!/bin/bash

# see man zscroll for documentation of the following parameters
# /home/sanjay/anaconda3/bin/zscroll -l 30 \
#         --delay 0.4 \
#         --scroll-padding "  " \
#         --match-command "$HOME/.config/polybar/scripts/get_spotify_status.sh --status" \
#         --match-text "Playing" "--scroll 1" \
#         --match-text "Paused" "--scroll 0" \
#         --update-check true "$HOME/.config/polybar/scripts/get_spotify_status.sh" &


# wait
prefix=""
status=$($HOME/.config/polybar/scripts/get_spotify_status.sh --status)
if [[ $status == "Playing" || $status == "Paused" ]]; then
prefix=$status
fi
msg=$($HOME/.config/polybar/scripts/get_spotify_status.sh)
echo $prefix $msg|cut -c 1-50