#!/bin/sh
# (c) 2017 Paul Roche
# Program to install Private Internet Access VPN on virtually any Linux OS
# (from Fedora 25 64-bit to Linux Debian PowerPC 32-bit)
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
# (e.g. UK London) by editing it to UK London.ovpn instead of Switzerland.ovpn as below 
sudo openvpn Switzerland.ovpn
sudo chmod +x

# Please check whether VPN services are permitted by law in the jurisdiction in which you intend to use them
# Nothing in this script does or is intended to endorse or encourage the use of Virtual Private Networks in jurisdictions
# in which they are prohibited by law. Check the law in your own jurisdiction before using any software, including this script.

 
