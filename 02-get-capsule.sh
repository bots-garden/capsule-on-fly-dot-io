#!/bin/bash
echo "💊 Installing the capsule launcher..."
export CAPSULE_VERSION="v0.2.9"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule/${CAPSULE_VERSION}/install-capsule-launcher.sh| bash
