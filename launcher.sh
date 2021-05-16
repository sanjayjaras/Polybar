#!/bin/sh

#killall polybar
sleep 2

polybar -r -c ~/.config/polybar/polybar.config mybar 2>&1 & disown
polybar -r -c ~/.config/polybar/polybar.config mybar2 2>&1 & disown
#polybar -c ~/.config/polybar/polybar2.config mybar2 2>&1 & disown

