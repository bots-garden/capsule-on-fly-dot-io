#!/bin/bash
set -o allexport; source .env; set +o allexport
echo "🚀 ${IMAGE_NAME}"

# Create the application, only at the first deployment
flyctl apps create ${IMAGE_NAME} --json
