FROM ghcr.io/mdallaire/alpine:rolling@sha256:fe9c183c71729abb5216ad845234f933a824131cc1b33caf2607a47680e84a8a

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache build-base libxml2-dev libxslt-dev py3-pip \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc", "-c", "/config/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
