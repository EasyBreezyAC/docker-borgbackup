#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Need the borgbackup version"
	exit 1
fi

BORG_VERSION="$1"

docker push easybreezyac/borgbackup:${BORG_VERSION}
