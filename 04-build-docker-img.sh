#!/bin/bash
set -o allexport; source .env; set +o allexport
echo "🐋 ${IMAGE_NAME}:${IMAGE_TAG}"

docker build -t ${IMAGE_NAME} . 
