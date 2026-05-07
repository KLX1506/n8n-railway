FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y gosu && rm -rf /var/lib/apt/lists/* && \
    mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
