# Docker Hands-on

The sample application for Docker hands-on.

## Getting started

Build image
```bash
docker build . --no-cache -t docker-hands-on/sample-app:0.1
```

Run container
```
docker run --rm -it -p 3000:3000 docker-hands-on/sample-app:0.1
```
