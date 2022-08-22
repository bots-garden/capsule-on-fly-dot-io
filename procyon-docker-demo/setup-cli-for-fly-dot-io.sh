#!/bin/bash
procyon_yaml="$(cat <<-EOF
procyon-launcher:
  url: https://procyon.fly.dev:9043
  admin-token: ilovepandas

procyon-reverse:
  url: https://procyon.fly.dev:8043
EOF
)"

echo "${procyon_yaml}" > .procyon-cli.yaml

cp .procyon-cli.yaml $HOME/.procyon-cli

