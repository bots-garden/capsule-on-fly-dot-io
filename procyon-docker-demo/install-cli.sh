#!/bin/bash
RELEASE="0.3.7"
ARCHITECTURE="amd64"
# ------------------------------------
# Install Procyon-cli
# ------------------------------------
wget https://github.com/bots-garden/procyon/releases/download/${RELEASE}/procyon-cli-${RELEASE}-linux-${ARCHITECTURE}.tar.gz
mkdir procyon-cli
tar -zxf procyon-cli-${RELEASE}-linux-${ARCHITECTURE}.tar.gz --directory procyon-cli

cd procyon-cli

procyon_yaml="$(cat <<-EOF
procyon-launcher:
  url: http://localhost:9090
  admin-token: ilovepandas

procyon-reverse:
  url: http://localhost:8080
EOF
)"

echo "${procyon_yaml}" > .procyon-cli.yaml

sudo cp ./procyon-cli /usr/local/bin/procyon-cli
cp .procyon-cli.yaml $HOME/.procyon-cli

cd ..
rm -rf ./procyon-cli
rm procyon-cli*
