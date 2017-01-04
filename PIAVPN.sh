#!/bin/sh
# (c) 4 January 2017 Paul Roche
# Program to install Private Internet Access VPN on Fedora 25 64-bit and Linux Debian PowerPC 32-bit
# Fedora 25 and Linux for PowerPC can present challenges when installing PIA VPN capability
# Note that an account with Private Internet Access is required to enable the VPN
# Version 0.2 - Black Badger

# Answers yes to all server file replacement questions
yes|sudo bin/PIAVPN.sh 

# makes itself executable
chmod +x "$0"

# installs openvpn and wget with error message if install fails
apt-get install openvpn wget || { echo "Install failed"; exit 2; }

cd /etc/openvpn || { echo "directory change failed"; exit 3; }
wget 'https://www.privateinternetaccess.com/openvpn/openvpn.zip' || { echo "Failed to download openvpn.zip"; exit 4; }
unzip openvpn.zip || { echo "Failed to unzip openvpn.zip"; exit 4; }
# list of PIA VPN server locations
# server list could be stripped using basename -s .ovpn <filename>
ls *.ovpn

