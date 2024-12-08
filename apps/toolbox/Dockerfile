ARG VERSION
FROM public.ecr.aws/docker/library/alpine:3.21 AS builder
ARG VERSION
ARG TARGETOS
ARG TARGETARCH
ARG TARGETVARIANT=""
ARG TARGETPLATFORM
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=${TARGETOS} \
    GOARCH=${TARGETARCH} \
    GOARM=${TARGETVARIANT} \
    GOPATH=/go
ENV PATH $GOPATH/bin:$PATH
#hadolint ignore=DL3018
RUN \
    apk add --no-cache go upx \
    && go install -ldflags="-s -w" github.com/drone/envsubst/cmd/envsubst@latest \
    && upx /go/bin/envsubst

FROM public.ecr.aws/docker/library/alpine:${VERSION}
ARG VERSION
ARG CHANNEL
ARG TARGETPLATFORM
ENV TARGETPLATFORM=${TARGETPLATFORM:-linux/amd64}

ENV UMASK="0002" \
    TZ="Etc/UTC"

WORKDIR /app

# hadolint ignore=DL3002
USER root

#hadolint ignore=DL3018
RUN \
    apk add --no-cache \
        # 656 kB           # 1.28 MB     # 632 kB
        ca-certificates    bash          bind-tools \
        # 1.07 MB
        coreutils \
        # 256 kB           # 156 kB      # 40 kB
        curl               iputils       jo \
        # 564 kB           # 200 kB      # 316 kB
        jq                 moreutils     nano \
        # 76 kB
        pv \
        # 36 kB            # 3.3 MB      # 320 kB
        tini               tzdata        unzip \
        # 16 kB            # 480 kB
        util-linux         wget \
    && \
    # 264 kB
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.14/main unrar

#hadolint ignore=DL3018
RUN \
    mkdir -p /config \
    && chmod -R 775 /config \
    && printf "umask %d\n" "${UMASK}" > /etc/profile.d/umask.sh \
    && ln -s /usr/bin/vi   /usr/local/bin/vi \
    && ln -s /usr/bin/vi   /usr/local/bin/vim \
    && ln -s /usr/bin/nano /usr/local/bin/nano \
    && ln -s /usr/bin/nano /usr/local/bin/neovim \
    && ln -s /usr/bin/nano /usr/local/bin/emacs \
    && rm -rf /tmp/*

VOLUME ["/config"]
COPY ./apps/toolbox/scripts /scripts
COPY --from=builder /go/bin/envsubst /usr/local/bin/envsubst
ENTRYPOINT ["/sbin/tini", "--"]
