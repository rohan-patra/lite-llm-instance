FROM ghcr.io/berriai/litellm:main-stable

# Copy your config file
COPY config.yaml /app/config.yaml

# Expose the port
EXPOSE 4000

# Set entrypoint and command separately
ENTRYPOINT ["litellm"]
CMD ["--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]
