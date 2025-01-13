#!/usr/bin/bash

set -eoux pipefail

# Run scripts

# shellcheck disable=SC1091
/ctx/build_files/base/01-add_repos.sh

# shellcheck disable=SC1091
/ctx/build_files/base/03-install_packages.sh

# shellcheck disable=SC1091
/ctx/build_files/base/04-customizations.sh

# shellcheck disable=SC1091
/ctx/build_files/base/05-firmware.sh

# shellcheck disable=SC1091
/ctx/build_files/base/06-brew.sh

# shellcheck disable=SC1091
# /ctx/build_files/base/07-bootc.sh

# shellcheck disable=SC1091
# /ctx/build_files/base/08-initramfs.sh

mkdir -p /var/lib &&
    mkdir -p /var/tmp &&
    chmod 1777 -R /var/tmp &&
    ostree container commit
