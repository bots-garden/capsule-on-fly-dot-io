#!/bin/bash
set -o allexport; source .env; set +o allexport
docker run --env MESSAGE="👋 Hello World 🌍" -p 8080:8080 -it ${IMAGE_NAME} bash
#docker run -it ${IMAGE_NAME} sh
