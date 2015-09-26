# didier.io docker

This repository is a part of didier.io ecosystem.
It is used for docker deployment.

## Dependencies

* ``node``
* ``docker``
* ``docker-compose``

## Installation

```
docker-compose build
docker-compose up -d
```

## Tips

```
docker rm $(docker ps -aq) # remove all containers
docker rmi $(docker images -q) # remove all images
```
