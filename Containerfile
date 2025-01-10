FROM scratch AS ctx
COPY / /

FROM quay.io/fedora/fedora-bootc:latest as base

ARG AKMODS_FLAVOR="coreos-stable"
ARG KERNEL="6.10.10-200.fc40.x86_64"

COPY build.sh /tmp/build.sh

RUN --mount=type=cache,dst=/var/cache/rpm-ostree \
    --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/build_files/build.sh

