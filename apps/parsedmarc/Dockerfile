FROM ghcr.io/mdallaire/alpine:rolling@sha256:ac55ce02d3df3948e0927448dacf03d9991c51e44083d4ea51194430e2a0e1cb

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
RUN apk add --no-cache build-base libxml2-dev libxslt-dev py3-pip \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc", "-c", "/config/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
