# jboss-fuse-docker

This project provides a Dockerfile for generate a JBoss Fuse Docker image.

## Usage

It can be any official JBoss Fuse 6.X.X downloaded from Red Hat. The Dockerfile allows the configuration of an specific Fuse version with the following variables:

* **ARG FUSE_ZIP** -> Name of the ZIP file
* **ARG FUSE_FOLDER** -> Name of the uncompressed folder
* **ARG FUSE_HTTP_LOCATION** -> Any server to download the image

If the ZIP file is local, it can be served with the Python simple http server executing the following commmand in the folder where the ZIP is:

    python -m SimpleHTTPServer 8000

Review the Dockerfile to see the ports and volumes available to use.

## Docker build example

    docker build --build-arg FUSE_ZIP=jboss-fuse-full-6.2.0.redhat-133.zip --build-arg FUSE_FOLDER=jboss-fuse-6.2.0.redhat-133 --build-arg FUSE_HTTP_LOCATION=http://<IP>:8000 -t=redhat/fuse:v6.2.0 .

## Docker run example

    docker run -it redhat/fuse:v6.2.0 /bin/bash
