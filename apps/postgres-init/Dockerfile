FROM ghcr.io/mdallaire/alpine:rolling@sha256:4dc9d9d2b62fd86cf96d5b7ee99bedcb19863ca609327ee643eff8107380fe2b

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql15-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
