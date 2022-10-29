#!/bin/bash
set -o allexport; source .env; set +o allexport
docker run -p 8080:8080 -it ${IMAGE_NAME}
#docker run -it ${IMAGE_NAME} sh
