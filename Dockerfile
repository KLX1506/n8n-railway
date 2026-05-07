FROM n8nio/n8n:latest

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node
# su-exec installieren (falls nicht vorhanden)
RUN apk add --no-cache su-exec

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
