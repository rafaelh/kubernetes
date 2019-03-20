# Example Docker Container
Taken from https://itnext.io/docker-from-the-beginning-part-i-ae809b84f89f

## Build an image from the dockerfile
``` sh
docker build -t chrisnoring/node:latest .
```

## Create a container
The dockerfile exposes port 3000 in it's config, and that needs to be mapped through to an external port on the host machine:
``` sh
docker run -p 8000:3000 chrisnoring/node
```
This will make the container available on http://localhost:8000

