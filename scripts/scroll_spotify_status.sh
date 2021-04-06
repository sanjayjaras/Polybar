#!/usr/bin/env bash

# see man zscroll for documentation of the following parameters
/home/sanjay/anaconda3/bin/zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "$HOME/.config/polybar/scripts/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$HOME/.config/polybar/scripts/get_spotify_status.sh" &

# mem="$($HOME/.config/polybar/scripts/get_spotify_status.sh --status )"
# song="$($HOME/.config/polybar/scripts/get_spotify_status.sh)"
# echo " "$mem" "$song
# test=$(/home/sanjay/anaconda3/bin/zscroll)
wait
