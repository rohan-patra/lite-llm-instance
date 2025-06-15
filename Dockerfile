FROM ghcr.io/berriai/litellm:main-stable

# Copy your config file
COPY config.yaml /app/config.yaml

# Expose the port
EXPOSE 4000

# Start command
CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]
