#!/bin/bash

# Simple and direct FFmpeg stream script
ffmpeg -re -loop 1 -i background.jpg -i "concat:song1.mp3|song2.mp3|song3.mp3|song4.mp3|song5.mp3" -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2500k -pix_fmt yuv420p -g 60 -c:a aac -b:a 128k -ar 44100 -flvflags no_duration_filesize -f flv "rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_STREAM_KEY"
