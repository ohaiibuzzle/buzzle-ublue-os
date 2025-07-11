#!/usr/bin/bash

set -eoux pipefail

# Run scripts

# shellcheck disable=SC1091
/ctx/build_files/base/01-add_repos.sh

# shellcheck disable=SC1091
/ctx/build_files/base/02-install_packages.sh

# shellcheck disable=SC1091
/ctx/build_files/base/03-customizations.sh

# shellcheck disable=SC1091
/ctx/build_files/base/04-brew.sh

# shellcheck disable=SC1091
/ctx/build_files/base/05-finalize.sh

mkdir -p /var/lib &&
    mkdir -p /var/tmp &&
    chmod 1777 -R /var/tmp &&
    ostree container commit
