FROM ghcr.io/mdallaire/alpine:rolling@sha256:48015e8f22913fcf481e5f3525807d402550fca93b68d78e6b320f5679186794 AS builder

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

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
