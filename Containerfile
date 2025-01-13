FROM scratch AS ctx
COPY / /

FROM ghcr.io/ublue-os/base-main:latest as base

RUN --mount=type=cache,dst=/var/cache/rpm-ostree \
    --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/build_files/build.sh && \
    ostree container commit && \
    bootc container lint
