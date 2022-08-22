# capsule-launcher-demo

## Hola function

**build**:
```bash
cd functions/hola/
./build.sh
```

**run**:
```bash
MESSAGE="🎉 tada!" capsule \
  -mode=cli \
  -wasm=hola.wasm \
  "👋 hello world 🌍" "I 💜 wasm"
```


## Hey function

**build**:
```bash
cd functions/hey/
./build.sh
```

**run**:
```bash
capsule \
  -wasm=hey.wasm \
  -mode=http \
  -httpPort=7070
```
or from a remote location:
```bash
capsule \
  -url=http://localhost:9090/hey.wasm \
  -wasm=./tmp/hey.wasm \
  -mode=http \
  -httpPort=7070
```


**call**:
```bash
curl -v -X POST \
  http://localhost:7070 \
  -H 'content-type: application/json; charset=utf-8' \
  -H 'my-token: I love Pandas' \
  -d '{"message": "Golang 💜 wasm", "author": "k33g"}'
```

## Hello function

**build**:
```bash
cd functions/hello/
./build.sh
```

**run**:
```bash
MESSAGE="👋 hello world 🌍" capsule \
  -wasm=hello.wasm \
  -mode=http \
  -httpPort=7071
```

Open your browser: http://localhost:7071
