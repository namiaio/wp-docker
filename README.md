Docker images for Seravo/wordpress projects.

## List image versions

```
docker image ls
```

## Build new version

```
docker build --tag namiaio/wp-docker:tagname .
```

- The tag could be `namiaio/wp-docker:latest` or `namiaio/wp-docker:e2e-latest`

## Push new version to DockerHub

- `docker push namiaio/wp-docker:tagname`
