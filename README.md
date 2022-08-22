# capsule-on-fly-dot-io

## Refs:
- https://www.wasm.builders/k33g_org/deploy-a-sat-serverless-function-with-to-flyio-35df

```bash
FLY_ACCESS_TOKEN
```

## Pre-requisites

> Install the Fly.io CLI
```bash
brew install superfly/tap/flyctl
```

> Get the Capsule Launcher
```bash
CAPSULE_VERSION="0.1.6"
OS="linux"
ARCH="amd64"
echo "💊 Installing the capsule launcher..."
wget https://github.com/bots-garden/capsule/releases/download/${CAPSULE_VERSION}/capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
sudo tar -zxf capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
rm capsule-${CAPSULE_VERSION}-${OS}-${ARCH}.tar.gz
```

## Build the hello function

```bash
cd functions/hello
./buils
```