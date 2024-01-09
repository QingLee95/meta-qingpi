# With this it will use xwayland which is not supported
RRECOMMENDS:${PN}:remove = "hyprland-csgo-vulkan"

#enable logging to stdout
FILESEXTRAPATHS:prepend:hyprland-log := "${THISDIR}/${PN}:"
SRC_URI::append:hyprland-log = "file://enable_stdout.patch \
                 "
# Libxkbcommon uses /usr/shar/X11/xkb/
RDEPENDS:${PN}:append = "xkeyboard-config"