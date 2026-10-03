#!/bin/bash

YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
KEY="${YOUTUBE_KEY}"

while true; do
  ffmpeg -re -i background.mp4 -i audio.mp3 \
    -c:v libx264 -preset ultrafast -b:v 3000k -maxrate 3000k -bufsize 6000k \
    -pix_fmt yuv420p -g 60 -c:a aac -b:a 128k -ar 44100 \
    -f flv "$YOUTUBE_URL/$KEY"
  sleep 2
done
