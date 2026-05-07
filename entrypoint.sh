#!/bin/sh
chown -R node:node /home/node/.n8n 2>/dev/null || true
exec su-exec node n8n "$@"
