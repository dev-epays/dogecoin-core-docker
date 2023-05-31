# dogecoin-core-docker

docker-compose example
```
services:
  core:
    build: git@github.com:dev-epays/dogecoin-core-docker.git#main
    environment:
      RPC_USER: "dogecoin"
      RPC_PASSWORD: "dogecoin"
    volumes:
      - /home/blockchain/.dogecoin:/home/dogecoin/.dogecoin
```
