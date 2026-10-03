#!/bin/bash

if [ -z "$YOUTUBE_STREAM_KEY" ]; then
  echo "Error: YOUTUBE_STREAM_KEY is not set!"
  exit 1
fi

ffmpeg -re -loop 1 -i background.jpg -i "concat:$(echo song*.mp3 | tr ' ' '|')" -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2500k -pix_fmt yuv420p -g 60 -c:a aac -b:a 128k -ar 44100 -flvflags no_duration_filesize -f flv "rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_STREAM_KEY"
