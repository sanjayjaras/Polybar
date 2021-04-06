#!/bin/bash
### Set wallpaper
folderPath="/home/sanjay/Pictures/wallpapers/"
files=`ls ${folderPath}*.*`
cnt=`ls ${folderPath}/*.*|wc -l`
cnt="$(($cnt-2))"
r=$(( $RANDOM % $cnt + 1 ));
fileName=`ls ${folderPath}*.*|sed -n ${r}p`
#nitrogen --head=0 --set-zoom-fill $fileName --save &
#nitrogen --head=1 --set-zoom-fill $fileName --save &
feh -z --bg-scale $fileName
#set wallpaper ends

