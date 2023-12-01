FROM ghcr.io/mdallaire/alpine:rolling@sha256:48015e8f22913fcf481e5f3525807d402550fca93b68d78e6b320f5679186794

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql15-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
