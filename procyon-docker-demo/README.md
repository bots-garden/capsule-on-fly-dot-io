# Procyon Demo with Docker

## Install

> build the image
```bash
./build.sh
```

## Run Procyon

```bash
docker run -p 8080:8080 -p 9090:9090 -d  procyon
```

## Install the Procyon CLI

```bash
./install-cli.sh
```

## Test Procyon

> Deploy a function to Procyon (the Runnable is published on wapm):
```bash
procyon-cli functions deploy \
  --wasm https://registry-cdn.wapm.io/contents/k33g/yo/1.0.0/yo.wasm \
  --function yo \
  --revision 1.0.0

procyon-cli functions deploy \
  --wasm https://registry-cdn.wapm.io/contents/k33g/yo/1.0.1/yo.wasm \
  --function yo \
  --revision 1.0.1

procyon-cli functions deploy \
  --wasm https://registry-cdn.wapm.io/contents/k33g/hello-world/1.0.2/hello-world.wasm \
  --function hello-world \
  --revision 1.0.2
```

> Call the function:
```bash
procyon-cli functions call \
  --function yo \
  --revision 1.0.0 \
  --method POST \
  --data 'Jane Doe'

procyon-cli functions call \
  --function yo \
  --revision 1.0.1 \
  --method POST \
  --data 'Jane Doe'

procyon-cli functions call \
  --function hello-world \
  --revision 1.0.2 \
  --method GET
```

> Or:
```bash
curl http://localhost:8080/functions/yo/1.0.0 -d 'Jane Doe'
curl https://procyon.fly.dev:8043/functions/yo/1.0.0 -d 'Jane Doe'
curl https://procyon.fly.dev:8043/functions/yo/1.0.1 -d 'Jane Doe'
```


## Deploy Procyon to Fly.io

```bash
brew install superfly/tap/flyctl
flyctl auth signup

flyctl apps create procyon --json # only at first time

flyctl deploy \
  --app procyon \
  --image k33g/procyon:0.0.0 \
  --verbose --json

```


## Refs

- Use wapm.io https://www.wasm.builders/k33g_org/publish-your-runnables-on-wapmio-49k0
- Deploy Sat+Runnable on fly.io https://www.wasm.builders/k33g_org/deploy-a-sat-serverless-function-with-to-flyio-35df