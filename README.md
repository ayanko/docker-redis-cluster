## Docker redis cluster

## Building

```sh
$ docker buildx build --no-cache --platform linux/amd64,linux/arm64  --tag ayanko/redis-cluster:latest --push .
```

## Using with docker compose

Start:

```sh
$ docker-compose up --detach
```

Stop:

```sh
$ docker-compose down --volumes
```
