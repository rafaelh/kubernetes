# Docker Commands
Frequently used commands. The full documentation is available here: https://docs.docker.com/engine/reference/commandline/

``` sh
# Build an image
docker build -t <user/image:type> <path>

# Create a container from an image
docker run -d -p <externalport>:<internalport> <user/image>

# Show running containers
docker ps 

# Stop a container - sends SIGTERM then SIGKILL. Use kill rather than stop to just send SIGKILL.
docker stop <containerid>

# Interactive mode - step inside a running container
docker exec -it <containerid> bash

# Remove an image
docker rm <containerid>
```
