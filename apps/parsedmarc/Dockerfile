FROM docker.io/library/python:3.12-alpine@sha256:8077d0497053dfaeabc55c9f4920dac07db174ee4bb583b1bdc4ee104ddf16f4

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
