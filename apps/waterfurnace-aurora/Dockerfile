FROM ghcr.io/mdallaire/alpine:rolling@sha256:ac55ce02d3df3948e0927448dacf03d9991c51e44083d4ea51194430e2a0e1cb

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL
ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates openssl ruby ruby-ffi

#hadolint ignore=DL3018
RUN \
    apk add --no-cache --virtual=.build-deps \
        ruby-dev \
        build-base
#hadolint ignore=DL3018,DL3059
RUN \
    gem install waterfurnace_aurora -v ${VERSION}

RUN apk del --purge .build-deps

ENV TTY=/dev/ttyUSB0
ENV MQTT=mqtt://localhost
WORKDIR /usr/bin/
COPY ./apps/waterfurnace-aurora/entrypoint.sh /entrypoint.sh
CMD [ "/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/ccutrer/waterfurnace_aurora"
