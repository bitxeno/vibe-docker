FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive



# Set entrypoint and default command
ENTRYPOINT ["opencode"]
CMD ["web", "--port", "4096", "--hostname", "0.0.0.0"]
