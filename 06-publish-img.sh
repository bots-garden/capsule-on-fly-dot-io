#!/bin/bash

set -o allexport; source .env; set +o allexport
echo "🐋 ${IMAGE_NAME}:${IMAGE_TAG}"

docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}
docker tag ${IMAGE_NAME} ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}
docker image ls
docker push ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}
