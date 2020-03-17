ARG ALPINE_VERSION=3.11

FROM alpine:${ALPINE_VERSION}

# TODO: break out a makefile and build a manifest for multiarch. 
#  For now, this works fine.  We git-pull and build on each arch.

ARG BORG_VERSION=1.1.10-r2

MAINTAINER docker@easybreezyac.com
LABEL maintainer="docker@easybreezyac.com"
LABEL alpine-version="$ALPINE_VERSION"
LABEL borgbackup-version="$BORG_VERSION"


RUN apk add --no-cache --update borgbackup=$BORG_VERSION openssh

ENTRYPOINT ["/usr/bin/borg"]
CMD ["--help"]
