PACKAGES=(
    firefox
    flatpak
    greetd
    mozilla-fira-mono-fonts
    nerd-fonts
    podman-bootc
    podman-compose
    podman-machine
    podman-tui
    podmansh
    python3-pip
    tuigreet
    vulkan
    hyprland
    kitty
    wofi
    vifm
)

rpm-ostree install "${PACKAGES[@]}"
