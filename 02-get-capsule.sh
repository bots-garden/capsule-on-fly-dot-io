#!/bin/bash
CAPSULE_VERSION="0.1.6"
OS="linux"
ARCH="amd64"
echo "💊 Installing the capsule launcher..."
wget https://github.com/bots-garden/capsule/releases/download/${CAPSULE_VERSION}/capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
sudo tar -zxf capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
rm capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
