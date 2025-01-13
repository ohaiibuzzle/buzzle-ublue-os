PACKAGES=(
    akmod-nvidia
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
    xorg-x11-drv-nvidia-cuda-libs
    xorg-x11-drv-nvidia-power
    hyprland
    kitty
    wofi
    vifm
)

rpm-ostree install "${PACKAGES[@]}"
