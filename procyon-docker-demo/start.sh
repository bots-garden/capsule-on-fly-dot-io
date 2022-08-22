#!/bin/bash
cd procyon-launcher;
PROCYON_WASM_WORKER_PORT=9090 \
PROCYON_ADMIN_TOKEN="ilovepandas" \
./procyon-launcher &
cd ..
cd procyon-reverse;
PROCYON_ADMIN_TOKEN="ilovepandas" \
PROXY_HTTP=8080 ./procyon-reverse
#cd ..
