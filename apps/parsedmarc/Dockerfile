FROM ghcr.io/mdallaire/alpine:rolling@sha256:229957e5173521a3aee7849e8ce925e42a914230a2a41ecd5c90a87f7d17b690

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache build-base libxml2-dev libxslt-dev py3-pip \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc -c /parsedmarc/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
