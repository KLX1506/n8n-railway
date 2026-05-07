#!/bin/sh
# Fix permissions on mounted volume at runtime
chown -R node:node /home/node/.n8n 2>/dev/null || true
exec su-exec node n8n "$@"
