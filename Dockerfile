FROM n8nio/n8n:latest

# Zum Root wechseln, um Berechtigungen zu setzen
USER root

# Stelle sicher, dass das Verzeichnis existiert und die richtigen Berechtigungen hat
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 755 /home/node/.n8n

# Optional: Auch das Hauptdatenverzeichnis vorbereiten
RUN mkdir -p /home/node/.n8n/database && \
    chown -R node:node /home/node/.n8n

# Wechsle zurück zum node-user
USER node

# Starte n8n
CMD ["n8n", "start"]
