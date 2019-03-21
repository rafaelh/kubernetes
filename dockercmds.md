# Docker Commands
Frequently used commands. The full documentation is available here: https://docs.docker.com/engine/reference/commandline/


# Creating Images and Containers
``` sh
# Build an image
docker build -t <user/image:type> <path>

# Create a container from an image
docker run -d -p <externalport>:<internalport> --name <mycontainername> <user/image>

# Show running containers
docker ps 

# Stop a container - sends SIGTERM then SIGKILL. Use kill rather than stop to just send SIGKILL.
docker stop <containerid/containername>

# Restart a container
docker start <containerid/containername>

# List all containers
docker container ls --all

# Interactive mode - step inside a running container
docker exec -it <containerid> bash

# Remove container or image
docker rm <containerid/containername>
docker image rm <imagename>
```

# Data Volumes

``` sh
# Create a Data Volume (for persistant storage)
docker volume create <volumename>

# List data volumes
docker volume ls

# Get rid of all volumes that you aren't using
docker volume prune

# or nuke an individual volume with
docker volume rm <volumename>

# Show where docker is placing files
docker inspect <volumename>

# Mounting a volume with a container (two different syntax types with examples)
docker run -d -p 8000:3000 --name <mycontainername> --volume <myvolumename>:/<directoryinthecontainer> <username>/<image>
docker run -d -p 8000:3000 --name node --volume nodelogs:/logs chrisnoring/node

# or
docker run -d -p 8000:3000 --name <mycontainername> --mount source=<myvolumename>,target=<directoryincontainer>
docker run -d -p 8000:3000 --name node --mount source=nodelogs,target=/logs chrisnoring/node



```

