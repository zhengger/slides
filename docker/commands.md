# Commands
{id: commands}

## Dockerfile commands
{id: dockerfile-commands}

* FROM
* COPY
* ADD
* RUN
* CMD
* ENTRYPOINT
* ENV
* [WORKDIR](https://docs.docker.com/engine/reference/builder/#workdir)


## Docker FROM
{id: docker-from}

* Declare the base-image.
* This is how we start all the Dockerfiles.

## Docker COPY
{id: docker-copy}

COPY from host to image

## Docker ADD
{id: docker-add}

ADD is like COPY but it can do more magic (can download files from the internet, automatically unpacks zipped files)

## Docker RUN
{id: docker-run}

Execute some command during the creation of the Docker image.

```
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y some-package
```

## Docker CMD
{id: docker-cmd}

CMD - the default command when the container starts

In Debian it is bash.

The CMD only runs when we run the container!

## Docker ENTRYPOINT
{id: docker-entrypoint}

## Docker ENV
{id: docker-env}


## Docker upload and publish
{id: docker-upload}

```
docker tag ID szabgab/name:1.01
docker login --username=szabgab
docker push szabgab/name:1.01
```

## Docker upload and publish
{id: docker-ps}

```
docker run --rm -d -it debian
docker ps
docker stop ID

docker exec  0ca23b8a9802 echo hello
docker exec -it 0ca23b8a9802 bash

docker kill ID    if it does not want to stop
```

## Dockerfile
{id: docker-dockerfile}

```
Dockerfile
```

```
FROM debian
RUN apt-get update
RUN apt-get install -y htop
RUN apt-get install -y curl
```

```
docker build -t exp1 .
docker images
docker history exp1
docker run --rm -it exp1
```

## Simple docker commands
{id: simple-docker-commands}

Empty state, no images:

no runnin containers

```
$ docker ps

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

no local containers at all (including not running, and showing the size)

```
$ docker ps -as

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

not even images

```
$ docker images

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
```

Commands

```
docker ps
docker ps -as    list all the containers available locally  (incl the size)
docker images    list images
```


## Passing command to the Docker Container
{id: passing-commands-to-docker-container}

```
$ docker run mydocker ls -l /

$ docker run mydocker perl -v

This is perl 5, version 22, subversion 2 (v5.22.2) built for x86_64-linux-gnu-thread-multi
....

$ docker run mydocker python -V
container_linux.go:247: starting container process caused "exec: \"python\": executable file not found in $PATH"
docker: Error response from daemon: oci runtime error: container_linux.go:247: starting container process caused "exec: \"python\": executable file not found in $PATH".
ERRO[0001] error getting events from daemon: net/http: request canceled
```

## Run container as a daemon
{id: run-container-as-a-daemon}
{i: inspect}
{i: logs}

```
docker run -d --rm busybox sleep 30

docker run --name my_name busybox sleep 100

docker inspect CONTAINER_ID
docker logs CONTAINER_ID
```

## Inspect low-level information about Docker
{id: inspect-docker-container}
{i: inspect}

```
docker inspect CONTAINER_ID
```

* [inspect](https://docs.docker.com/engine/reference/commandline/inspect/)


## Copy console output of container (logs)
{id: copy-console-of-container}
{i: logs}

```
docker logs CONTAINER_ID
```

* [logs](https://docs.docker.com/engine/reference/commandline/logs/)

## Ignore files and directories
{id: ignore-files-and-directories}
{i: .dockerignore}

`docker build .`   will send over all the content of the corrent directory to the docker
daemon. You usually don't want that. So add a file called `.dockerignore` to the root
of your project

```
.git/
temp/
```


