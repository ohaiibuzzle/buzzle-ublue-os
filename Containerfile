FROM scratch AS ctx
COPY / /

FROM ghcr.io/ublue-os/akmods-nvidia:main-41 as base

RUN --mount=type=cache,dst=/var/cache/rpm-ostree \
    --mount=type=bind,from=ctx,source=/,target=/ctx \
    /ctx/build_files/build.sh && \
    ostree container commit
