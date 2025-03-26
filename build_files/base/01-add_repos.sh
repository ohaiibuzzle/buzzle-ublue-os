#!/usr/bin/bash

set -eoux pipefail

dnf5 -y copr enable ublue-os/staging
dnf5 -y copr enable ublue-os/packages
dnf5 -y copr enable sentry/switcheroo-control_discrete
dnf5 -y copr enable che/nerd-fonts
dnf5 -y copr enable gmaglione/podman-bootc
