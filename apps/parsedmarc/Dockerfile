FROM docker.io/library/python:3.12-alpine@sha256:aeff64320ffb81056a2afae9d627875c5ba7d303fb40d6c0a43ee49d8f82641c

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
