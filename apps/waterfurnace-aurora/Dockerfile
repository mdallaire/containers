FROM ghcr.io/mdallaire/alpine:rolling@sha256:218e3d04a015ef478949af4476f46ea42f128d7e2bfa7c8113427a6cd83addbb

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
