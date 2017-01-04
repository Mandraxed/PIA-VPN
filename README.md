# PIA-VPN
## README
Program to install Private Internet Access Virtual Private Network on Linux installations. Tested on Fedora 25 64-bit, Linux Mint 18.1 and Debian PowerPC 32-bit.

Automates installation and execution of PIA VPNs on a per session basis using an installation file and start file.

A paid account with Private Internet Access is required if you want to use their VPN service.
If you pay Private Internet Access for VPN service, they will provide a user ID and password.
The user ID is an 8-character alphanumeric beginning with a lower case letter 'p'.
This script requires you to enter both your PIA userID and then your password.

No lock symbol will appear (even when you are connected to the VPN). You may test the VPN is working simply by checking the geolocation of your IP address from your browser.

To change from the default (Swiss) PIA VPN server to another server, simply amend the last line by deleting reference to the Swiss PIA VPN server and insert the name of the PIA VPN server you would prefer to use.
For example, to change from the Swiss to the London server; edit the last line of the script to 'UK London.ovpn' instead of Switzerland.ovpn as below:

$ sudo openvpn Switzerland.ovpn
becomes
$ sudo openvpn UK London.ovpn

Please check whether VPN services are permitted by law in the jurisdiction in which you intend to use them.
Nothing in this script does or is intended to endorse or encourage the use of Virtual Private Networks in jurisdictions in which they are prohibited by law. Check the law in your jurisdiction before using any software, including this script.

## Changelog
* Version 0.1 - Amber Alligator - initial version
* Version 0.2 - Black Badger. All known bugs fixed.

Paul Roche (c) 2017
