#!/bin/bash

# Path to the video in the repository root
VIDEO_PATH="http://vectorstudios.rf.gd/wp-content/uploads/2024/11/VID-20241124-WA0005.mp4"

# YouTube RTMP URL and stream key
STREAM_URL="rtmp://a.rtmp.youtube.com/live2/0kue-suc9-ec09-szbg-1qrd"  # Replace YOUR_STREAM_KEY with your YouTube stream key

# Run FFmpeg to stream the video on loop
ffmpeg -stream_loop -1 -re -i $VIDEO_PATH -vcodec libx264 -preset ultrafast -tune zerolatency -acodec aac -strict experimental -f flv $STREAM_URL



