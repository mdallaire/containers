FROM ghcr.io/mdallaire/alpine:rolling@sha256:e00f1d56a521c212983e3448c564945bacea8a2944f30c1bbb01e085794db12d

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
    # TODO remove when PR is merged https://github.com/domainaware/parsedmarc/pull/466/files
    && pip install msgraph-core==0.2.2 \
    && pip install parsedmarc==${VERSION}

USER kah

CMD ["parsedmarc", "-c", "/config/parsedmarc.ini"]

LABEL org.opencontainers.image.source="https://github.com/domainaware/parsedmarc"
