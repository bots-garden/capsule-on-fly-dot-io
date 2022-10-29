#!/bin/bash

URL="https://capsule-hello-demo.fly.dev"
#URL=http://localhost:8080
curl -v -X POST ${URL} \
-H 'content-type: application/json' \
-d '{"name": "Bob"}'
