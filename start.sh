#!/bin/bash
ffmpeg -re -stream_loop -1 -i background.jpg -stream_loop -1 -i "concat:song1.mp3|song2.mp3|song3.mp3|song4.mp3|song5.mp3|song6.mp3|song7.mp3|song8.mp3|song9.mp3" -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2500k -pix_fmt yuv420p -g 60 -c:a aac -b:a 128k -ar 44100 -flvflags no_duration_filesize -f flv "rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_STREAM_KEY"
