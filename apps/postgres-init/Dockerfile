FROM ghcr.io/mdallaire/alpine:rolling@sha256:3c12a1ac409f41d0a4b9f5012456c78ab4a7523a00046617155a2cd4345dbb38

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql15-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
