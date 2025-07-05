FROM docker.n8n.io/n8nio/n8n:latest

# Set the host to 0.0.0.0 to allow external access
ENV N8N_HOST=0.0.0.0

# Change the default port from 5678 to 7860
ENV N8N_PORT=7860

# Fix permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Set your space url here
ENV WEBHOOK_URL=

# Enable task runners to avoid deprecation warning
ENV N8N_RUNNERS_ENABLED=true

# Expose the custom port for Hugging Face Spaces
EXPOSE 7860

# Persist data volume
VOLUME /home/node/.n8n