#!/bin/sh
# (c) 4 January 2017 Paul Roche
# Program to install Private Internet Access VPN on Fedora 25 64-bit and Linux Debian PowerPC 32-bit
# Fedora 25 and Linux for PowerPC can present challenges when installing PIA VPN capability
# Note that an account with Private Internet Access is required to enable the VPN
# Version 0.2 - Black Badger
sudo openvpn /etc/openvpn/Switzerland.ovpn
