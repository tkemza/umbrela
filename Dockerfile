# Base image - Use Ubuntu as the base image
FROM ubuntu:20.04

# Author and License information
LABEL maintainer="Tkemza"
LABEL license="MIT"

# Set non-interactive mode for apt-get to avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt-get update && apt-get install -y \
    git \
    lolcat \
    clamav \
    clamav-daemon \
    tcpdump \
    bc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the Bash script into the container
COPY umbrela.sh /usr/local/bin/umbrela.sh

# Make the script executable
RUN chmod +x /usr/local/bin/umbrela.sh

# Create a working directory
WORKDIR /workspace

# Start ClamAV services and ensure freshclam is up-to-date
RUN freshclam && systemctl enable clamav-daemon

# Start with ClamAV daemon
CMD ["umbrela.sh"]
