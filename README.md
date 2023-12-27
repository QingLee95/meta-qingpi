# TinyQ minimal lightweight custom embedded linux distro
For playing and testing.

Custom Yocto layer (meta-tinyqpi) for the Raspberry Pi 4B and (later) Raspberry Pi Zero 2W.

Yocto version: **Kirkstone**

Current features:

- Static ip on eth0 (192.168.1.3/24)
- Already working wifi possible
- SSH with root login and empty password
- .sdimg image
- Serial communication enabled
- No Avahi
- No Python lib for hardware access

## Dependencies

- poky
- meta-openembedded
- meta-raspberrypi

*Do not change these submodules!

## TODO's

- After install move image to /artifacts
- SysV init for Busybox init
- Use Poky-tiny
- Use core-image-minimal and build up from there (basic feature won't work anymore)
- Add libgpiod
- Strip Kernel

# How to build image

1. Pull repository -> structure of directory should be
    ```bash
    .
    ├── artifacts
    ├── build
    └── sources
        ├── activate_bb
        ├── meta-openembedded
        ├── meta-raspberrypi
        ├── meta-tinyqpi
        ├── poky
        └── README.md
   ```
2. ```git submodule update --init --recursive``` in ./sources
3. ```source sources/activate_bb build``` in ./
4. ```bitbake tinyqpi4b```  in ./build

Step 4 can take a few hours!

The image will be in **./artifacts/*.sdimg** flash it to a sdcard of ssd and insert in the Raspberry Pi.

# Static ip on eth0

Add following line to **./build/conf/local.conf** when building image

```
DISTROOVERRIDE:append = ":static_eth0"
```
After this the raspberry pi will be accessible on eth0 via the static ip 192.168.1.3/24.

# Configured wifi out of the box on wlan0
Add following line to **./build/conf/local.conf** when building image

```
DISTROOVERRIDES:append = ":configured_wifi"
# Fill in wifi name
WIFI_NAME = ""
# Fill in wifi password
WIFI_PWD = ""
```

The Raspberry pi will startup with wifi already connected.