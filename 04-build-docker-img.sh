#!/bin/bash
set -o allexport; source .env; set +o allexport
echo "🐋 ${IMAGE_NAME}:${IMAGE_TAG}"

cd functions/hello
docker build -t ${IMAGE_NAME} . 
