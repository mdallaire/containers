FROM ghcr.io/mdallaire/alpine:rolling@sha256:fe9c183c71729abb5216ad845234f933a824131cc1b33caf2607a47680e84a8a AS builder

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
    PYTHONPATH="${PYTHONPATH}:/pip-packages" \
    HOME="/config"

#hadolint ignore=DL3018
RUN apk add --no-cache py3-pip \
    && pip install hydroqc2mqtt==${VERSION}

USER kah

ENV TZ="America/Toronto" \
    MQTT_DISCOVERY_DATA_TOPIC="homeassistant" \
    MQTT_DATA_ROOT_TOPIC="hydroqc" \
    SYNC_FREQUENCY=600

CMD ["hydroqc2mqtt"]

LABEL org.opencontainers.image.source="https://gitlab.com/hydroqc/hydroqc2mqtt"
