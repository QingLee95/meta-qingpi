# Own custom meta layer
For playing and testing.

Custom Yocto layer for the Raspberry Pi 4B and (later) Raspberry Pi Zero 2W.

Current features:

- Static ip on eth0 (192.168.1.3/24)
- SSH with root login and empty password
- .sdimg image
- Serial communication enabled
- No Avahi
- No Python lib for hardware access

## Dependencies

- meta-raspberrypi

## TODO's

Raspberry Pi 4B

- After install move image to /artifacts
- Replace BusyBox by CoreUtils
- Enable by default wifi connection
- Add libgpiod
- Change SysLog for Journalctl
- Pi-Hole (Depends on wifi)
- Change SysInit for SystemD 

Raspberry Pi 2W zero

- Busybox
- SysInit for Busybox init
- glibc for musl c
