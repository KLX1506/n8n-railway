FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache su-exec && \
    mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
