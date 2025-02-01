PACKAGES=(
    micro
    nano
    flatpak
    sddm
    mozilla-fira-mono-fonts
    nerd-fonts
    podman-bootc
    podman-compose
    podman-machine
    podman-tui
    podmansh
    python3-pip
    vulkan
    hyprland
    foot
    wofi
    waybar
    vifm
    git
    wireplumber
    brightnessctl
    playerctl
    firewalld
    network-manager-applet
    hyprpaper
    hyprlock
    hypridle
    blueman
    polkit-kde
    distrobox
    grimshot
    unzip
    curl
    plymouth
    plymouth-plugin-script
    fontawesome-fonts-all
    ublue-brew
    xdg-user-dirs
    grubby
    breeze-icon-theme
    power-profiles-daemon
    xdg-desktop-portal-hyprland
    hyprland-plugins
    hyprshot
    code
    tailscale
)

dnf5 install -y "${PACKAGES[@]}"

dnf5 install -y code

dnf5 install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

dnf5 install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf5 install -y akmod-nvidia