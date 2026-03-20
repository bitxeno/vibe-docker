FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install base dependencies and tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    ca-certificates \
    unzip \
    zip \
    jq \
    rclone



# Set entrypoint and default command
ENTRYPOINT ["opencode"]
CMD ["web", "--port", "4096", "--hostname", "0.0.0.0"]
