FROM n8nio/n8n:2.36.2

USER root

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
