#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archm8"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Legendary-Cookie <https://legendary-cookie.github.com>"
iso_application="Archm8"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/usr/local/bin/checkra1n"]="0:0:700"
)
