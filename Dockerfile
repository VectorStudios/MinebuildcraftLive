# Use a lightweight FFmpeg image
FROM jrottenberg/ffmpeg:latest

# Set the working directory
WORKDIR /app

# Copy the start-stream.sh script into the container
COPY start-stream.sh /app/start-stream.sh

# Make sure the script is executable
RUN chmod +x /app/start-stream.sh

# Set the entrypoint to execute the streaming script
ENTRYPOINT ["/app/start-stream.sh"]
