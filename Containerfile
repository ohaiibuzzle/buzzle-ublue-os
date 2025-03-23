FROM scratch AS ctx
COPY / /

FROM quay.io/fedora/fedora-bootc:latest as base

RUN --mount=type=cache,dst=/var/cache/rpm-ostree \
    --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/build_files/build.sh && \
    ostree container commit
