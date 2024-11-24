#!/bin/bash

# Path to your video
VIDEO_PATH="./video.mp4"  # Adjust path if necessary

# YouTube RTMP URL and stream key (replace YOUR_STREAM_KEY)
STREAM_URL="rtmp://a.rtmp.youtube.com/live2/0kue-suc9-ec09-szbg-1qrd"

# Run FFmpeg to stream the video
ffmpeg -re -i $VIDEO_PATH -vcodec libx264 -acodec aac -f flv $STREAM_URL