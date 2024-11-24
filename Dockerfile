# Use a base image with FFmpeg installed
FROM jrottenberg/ffmpeg:latest

# Set working directory
WORKDIR /app

# Copy the pre-recorded video and the start-stream.sh script to the container
COPY video.mp4 /app/
COPY start-stream.sh /app/

# Make sure the script is executable
RUN chmod +x /app/start-stream.sh

# Set the entrypoint to run the script
ENTRYPOINT ["/app/start-stream.sh"]