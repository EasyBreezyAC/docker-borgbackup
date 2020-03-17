#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Need the borgbackup version"
	exit 1
fi

BORG_VERSION="$1"

docker build -t borg -t easybreezyac/borgbackup:latest -t easybreezyac/borgbackup:${BORG_VERSION} \
	--build-arg ALPINE_VERSION="3.11" \
	--build-arg BORG_VERSION="$BORG_VERSION" \
	.

