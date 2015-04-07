# gentoo FLOSS (Free/Libre and Open Source Software) overlay.

## Description
	This overlay includes only those programs that are "free" ("libre") and "open source" at the same time.

## Installation

### Using layman

#### Install layman
    emerge layman
    echo 'source /var/lib/layman/make.conf' >> /etc/make.conf

#### Add the 'FLOSS' overlay
    layman -o https://github.com/linux0uid/gentoo-overlay/master/overlay.xml -f -a FLOSS

#### Sync overlays=
    layman -S

#### Install:
    emerge package_name
