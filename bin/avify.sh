#!/bin/sh
#
# Converts video file to avi:
#    avify.sh <file>...

for file in "$@"; do
    filename="${file%.*}"
    extension="${file##*.}"

    ffmpeg -i "$file" -vcodec libxvid -filter:v scale="640:-1" -acodec ac3 -ar 48000 -ab 192k "$filename.avi"
done
