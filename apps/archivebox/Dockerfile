FROM ghcr.io/mdallaire/alpine:rolling@sha256:4dc9d9d2b62fd86cf96d5b7ee99bedcb19863ca609327ee643eff8107380fe2b

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache build-base libxml2-dev libxslt-dev py3-pip \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc", "-c", "/config/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
