# Own custom meta layer
For playing and testing.

Custom Yocto layer for the Raspberry Pi 4B and (later) Raspberry Pi Zero 2W.

Current features:

- Static ip on eth0 (192.168.1.3/24)
- Already working wifi possible
- SSH with root login and empty password
- .sdimg image
- Serial communication enabled
- No Avahi
- No Python lib for hardware access

## Dependencies

- meta-raspberrypi

## TODO's

- After install move image to /artifacts
- SysV init for Busybox init
- Add libgpiod
- Change SysLog for Journalctl
- Pi-Hole (Depends on wifi)


# Static ip on eth0

Add following line to **local.conf** when building image

```
DISTROOVERRIDE:append = ":static_eth0"
```
After this the raspberry pi will be accessible on eth0 via the static ip 192.168.1.3/24.

# Configured wifi out of the box on wlan0
Add following line to **local.conf** when building image

```
DISTROOVERRIDES:append = ":configured_wifi"
# Fill in wifi name
WIFI_NAME = ""
# Fill in wifi password
WIFI_PWD = ""
```

The Raspberry pi will startup with wifi already connected.