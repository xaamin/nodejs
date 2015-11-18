## Composer Docker Container
Docker container to run NodeJS apps.

### Base docker image
* [xaamin/ubuntu](https://registry.hub.docker.com/r/xaamin/ubuntu)

### Installation
* Install [Docker](https://www.docker.com)
* Pull from [Docker Hub](https://hub.docker.com/r/xaamin/nodejs) `docker pull xaamin/nodejs`

### Manual build
* Build an image from Dockerfile `docker build -t xaamin/nodejs https://github.com/xaamin/nodejs.git`

### Volumes
You must provide a volume mounted on /app containing package.json file

### Usage

```	
	docker run --rm -it -v /path/with/nodejs/project:/app xaamin/nodejs
```