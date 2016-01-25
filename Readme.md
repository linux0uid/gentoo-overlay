﻿# gentoo FLOSS overlay
(Free/Libre and Open Source Software)

## Description
This overlay includes only those programs that are "free" ("libre") and "open source" at the same time.

## Installation

### Using layman

##### Install layman
    emerge -v layman

##### Add the 'FLOSS' overlay
    layman -o https://github.com/linux0uid/gentoo-overlay/raw/master/overlay.xml -f -a FLOSS

##### Sync overlays
    layman -S

### Install:
    emerge package_name
