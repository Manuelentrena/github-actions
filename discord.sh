#!/bin/sh

# Asegúrate de que ambos argumentos se hayan pasado
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 \"mensaje\" \"webhook_url\""
  exit 1
fi

MESSAGE=$1
WEBHOOK_URL=$2

#Install curl
apt-get update && apt-get install -y curl

# Enviar la notificación a Discord
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"${MESSAGE}\"}" "${WEBHOOK_URL}"