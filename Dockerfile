FROM honeygain/honeygain:latest

# Switch to root to install python
USER root
RUN apt-get update && apt-get install -y python3

# Copy your start script into the container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Tell Render to expose port 10000
EXPOSE 10000

# CLEAR the default Honeygain entrypoint so our script runs
ENTRYPOINT []

# Run the custom script
CMD ["/start.sh"]
