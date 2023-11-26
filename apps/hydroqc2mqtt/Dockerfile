FROM ghcr.io/mdallaire/alpine:rolling@sha256:4dc9d9d2b62fd86cf96d5b7ee99bedcb19863ca609327ee643eff8107380fe2b AS builder

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
