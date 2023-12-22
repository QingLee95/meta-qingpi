# Own custom meta layer
For playing and testing.

Custom Yocto layer for the Raspberry Pi 4B and (later) Raspberry Pi Zero 2W.

Current features:

- Static ip on eth0 (192.168.1.3/24)
- SSH with root login and empty password
- .sdimg image
- Serial communication enabled

## Dependencies

- meta-raspberrypi

## TODO's

- Change openSSH for DropBear
- After install move image to /artifacts
- Investigate BusyBox
- Pi-Hole
