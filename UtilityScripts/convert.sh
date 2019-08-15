#!/bin/sh
palette=/tmp/palette.png
input=~/Downloads/video.mp4
output=~/Downloads/demo.gif
filters="fps=15,scale=320:-1:flags=lanczos"

rm $output #&>/dev/null
ffmpeg -i $input -vf "$filters,palettegen" -y $palette
ffmpeg -i $input -i $palette -lavfi "$filters,paletteuse" -y $output
rm $palette
