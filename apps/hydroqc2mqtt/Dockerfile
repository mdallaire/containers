FROM ghcr.io/mdallaire/alpine:rolling@sha256:9bd052166abbdfe0839095baa266f24d6ac19d66bddabb532e6bc3e09bb0a002 AS builder

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
