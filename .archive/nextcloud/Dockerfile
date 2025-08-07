FROM docker.io/library/nextcloud:31.0.7-fpm-alpine@sha256:502bea8b153a7bc7a270edf0d5a06046216f55e64ce62657197bc943133fa197

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
