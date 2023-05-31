# dogecoin-core-docker

docker-compose example
```
services:
  core:
    build: https://github.com/dev-epays/dogecoin-core-docker.git
    environment:
      RPC_USER: "dogecoin"
      RPC_PASSWORD: "dogecoin"
```
