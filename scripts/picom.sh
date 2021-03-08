#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x picom)" ]; then
            pkill picom
        else
            picom -b --config ~/.config/picom/picom.conf
        fi
        ;;
    *)
        if [ "$(pgrep -x picom)" ]; then
            echo ""
        else
            echo ""
        fi
        ;;
esac