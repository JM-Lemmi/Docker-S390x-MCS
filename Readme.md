# Minecraft-Docker noarch

This Docker Container was created to run a simple vanilla Minecraft Server on different architectures, mostly IBM s390x, as other images only support x86 or arm.

## Build

Arguments in Dockerfile:

ARCH - architecture amd64|s390x

To build this image use:

```
# AMD64
$ docker build -t jm-lemmi/docker-mcs-noarch:amd64 --build-arg ARCH=amd64/ .

# S390X
$ docker build -t jm-lemmi/docker-mcs-noarch:s390x --build-arg ARCH=s390x/ .
```