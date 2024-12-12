FROM docker.io/library/python:3.13-alpine@sha256:657dbdb20479a6523b46c06114c8fec7db448232f956a429d3cc0606d30c1b59

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

ENV \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_ROOT_USER_ACTION=ignore \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_BREAK_SYSTEM_PACKAGES=1 \
    HOME="/config"

USER root
WORKDIR /app

#hadolint ignore=DL3018
RUN \
    apk add --no-cache --virtual=.build-deps \
        build-base \
        rust \
        libxml2-dev \
        libxslt-dev \
    && \
    pip install uv \
    && \
    uv pip install --system parsedmarc==${VERSION} \
    && \
    apk del --purge .build-deps

USER nobody:nogroup
WORKDIR /config
VOLUME ["/config"]
CMD ["parsedmarc", "-c", "/config/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
