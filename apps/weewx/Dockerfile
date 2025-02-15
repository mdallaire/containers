FROM docker.io/library/python:3.13-alpine@sha256:323a717dc4a010fee21e3f1aac738ee10bb485de4e7593ce242b36ee48d6b352

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
        gcc \
        unzip \
    && \
    pip install uv


RUN \
uv pip install --system weewx==${VERSION} \
    && \
    uv pip install --system paho-mqtt \
       #python-cjson \
       ujson \
       ephem \
       urllib3 \
       influxdb

COPY ./apps/weewx/entrypoint.sh /entrypoint.sh

ENV WEEWX_ROOT=/config
WORKDIR /config
ENTRYPOINT ["/usr/bin/catatonit", "--"]
CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/weewx/weewx"
