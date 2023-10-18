FROM ghcr.io/mdallaire/alpine:rolling@sha256:9010dc27406cd85242e128f9447f20f980cecface38f8a211676e1cedba70a12

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache libxml2-dev libxslt-dev py3-pip \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc -c /parsedmarc/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
