FROM scratch AS ctx
COPY / /

FROM quay.io/fedora/fedora-bootc:latest as base

ARG AKMODS_FLAVOR="coreos-stable"

RUN --mount=type=cache,dst=/var/cache/rpm-ostree \
    --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/build_files/build.sh

