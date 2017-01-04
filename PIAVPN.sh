#!/bin/sh
# (c) 2017 Paul Roche
# Program to install Private Internet Access VPN on Fedora 25 64-bit and Linux Debian PowerPC 32-bit
# Fedora 25 and Linux for PowerPC can present challenges when installing PIA VPN capability
# Note that an account with Private Internet Access is required to enable the VPN
# Version 0.1 - Amber Alligator

sudo apt-get install openvpn wget
#remember to comment-out the above line if openvpn and wget have already been installed
cd /etc/openvpn
sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
sudo unzip openvpn.zip
# check PIA VPN server locations installed properly
ls -l
# select a server - Switzerland is used in the example but any server may be nominated
# (e.g. London) by editing it to London.ovpn instead of Switzerland.ovpn as below 
sudo openvpn Switzerland.ovpn
sudo chmod +x

 
