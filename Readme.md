# gentoo-overlay

## Warning

Use at your own risks

## Installation

### Using layman

#### Install layman
    emerge layman
    echo 'source /var/lib/layman/make.conf' >> /etc/make.conf

#### Add the 'FLOSS' overlay
    layman -o https://github.com/linux0uid/gentoo-overlay/raw/master/overlay.xml -f -a FLOSS

#### Sync overlays=
    layman -S

#### Install:
    emerge package_name
