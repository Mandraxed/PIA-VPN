# PIA-VPN
# README
# Program to install Private Internet Access Virtual Private Network on virtually any Linux installation
# (including potentially challenging distributions such as Fedora 25 64-bit or Debian PowerPC 32-bit

# It can prove challenging to install a Private Internet Access Virtual Private Network depending on the Linux installation
# For example, Fedora 25 (64-bit) and Linux for PowerPC (32-bit) may prove problematic (when trying to install and execute...
# ...PIA VPN capability

# This script automates installation and execution of PIA VPNs provided you have root access

# Save the file (for example) to your Desktop
# Open a terminal and type 'cd Desktop' to change to the correct directory
# Run the program by typing 'sh PIAVPN.sh' from the terminal

# Note that a paid account with Private Internet Access is required if you want to use their VPN service
# After you pay Private Internet Access for their VPN service, they will provide you with a user ID and password
# The user ID is an 8-character alphanumeric beginning with a lower case letter 'p'
# The script requires you to enter your userID followed by your password


# IMPORTANT
# Remember to comment-out the first line of the script (installing openvpn and wget) if they are already installed
# it will still work if you do not comment-out otiose lines
# That is to say, please remember to comment-out 'sudo apt-get install openvpn wget' if already installed

# Note that no lock symbol will appear even when you are connected to the VPN
# You can test the VPN is working by checking the geolocation of your IP address

# The script works by going to the /etc/openvpn directory via 'cd /etc/openvpn'
# It then uses wget to grab the PIA VPN server list 'sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip'

# The PIA VPN server list is then unzipped 'sudo unzip openvpn.zip'

# There is a check to determine the PIA VPN server locations have been installed 'ls -l'

# The user must then select the server from the PIA VPN server list which they would like to use
# The default PIA VPN server contained in the script is Switzerland but any server may be selected

# To change from the default PIA VPN server to another server on the list, simply amend the last line
# For example, to change from the Swiss server to the London server;
# edit the last line of the script to 'UK London.ovpn' instead of Switzerland.ovpn as below 
# 'sudo openvpn Switzerland.ovpn' becomes 'sudo openvpn UK London.ovpn'

# The file is made executable with 'sudo chmod +x'

# Please check whether VPN services are permitted by law in the jurisdiction in which you intend to use them
# Nothing in this script does or is intended to endorse or encourage the use of Virtual Private Networks in jurisdictions
# in which they are prohibited by law. Check the law in your jurisdiction before using any software, including this script.

# TODO
# The script in current form may cache passwords in memory 
# A later version should use the 'auth-nocache' option to prevent this

# Version 0.1 - Amber Alligator
# Paul Roche (c) 2017 
