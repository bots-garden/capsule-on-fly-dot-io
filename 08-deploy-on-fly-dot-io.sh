#!/bin/bash
set -o allexport; source .env; set +o allexport
echo "🚀 ${IMAGE_NAME}"

# 🖐️ Don't forget to set FLY_ACCESS_TOKEN
flyctl deploy \
  --app ${IMAGE_NAME} \
  --image ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} \
  --env MESSAGE="👋 Hello World 🌍" \
  --verbose --json
