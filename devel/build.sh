#! /usr/bin/bash

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd .. && pwd)"

podman build --pull -t btfm:dev -v $SRC_DIR:/devel:z --force-rm=true \
	-f devel/Dockerfile
