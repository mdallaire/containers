FROM docker.io/library/python:3.12-alpine@sha256:90f7dfae6a8c3676647fdb0b7581e3a02b129b7fabcab21bcaf5e081a1eab452

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

ENV UMASK="0002" \
    TZ="Etc/UTC"

USER root
WORKDIR /app

#hadolint ignore=DL3018,DL3013,DL3059,DL4006
RUN \
    apk add --no-cache \
        catatonit \
        bash \
        unzip \
    && \
    pip install uv


RUN \
uv pip install --system weewx==${VERSION} \
    && \
    uv pip install paho-mqtt \
       python-cjson \
       ujson \
       ephem \
       urllib3 \
       influxdb

COPY ./apps/weewx/entrypoint.sh /entrypoint.sh

ENV WEEWX_ROOT /config
WORKDIR /config
ENTRYPOINT ["/usr/bin/catatonit", "--"]
CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/weewx/weewx"
