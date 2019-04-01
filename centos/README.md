# CentOS in a container

This is a dockerfile to pull down the latest official image of CentOS. It does not use SELinux.

Build with the following command:
``` sh
docker build --rm -t centos:latest .
docker run -d --name centos centos:latest

# Or, to enable Systemd on a linux system:
docker run -d --name centos -v /sys/fs/cgroup:/sys/fs/cgroup:ro centos:latest
```

More information is available at the [official repo|https://hub.docker.com/_/centos].
