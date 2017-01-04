PIA-VPN
README
Program to install Private Internet Access Virtual Private Network on virtually any Linux installation (including potentially challenging distributions such as Fedora 25 64-bit or Debian PowerPC 32-bit
It may prove challenging to install Private Internet Access Virtual Private Networks depending upon which Linux installation you are running.
For example, Fedora 25 (64-bit) and Linux for PowerPC (32-bit) can be problematic...
This simple script automates installation and execution of PIA VPNs on a per session basis provided you have root access
To begin using the script, save the file (by way of example) to your Desktop
Open a terminal and type 'cd Desktop' to change to the correct directory (if you saved the file to Desktop).
Run the program from the terminal by typing 'sh PIAVPN.sh' as follows:

$    sh PIAVPN.sh
A paid account with Private Internet Access is required if you want to use their VPN service
If you pay Private Internet Access for VPN service, they will provide a user ID and password
The user ID is an 8-character alphanumeric beginning with a lower case letter 'p'
This script requires you to enter both your PIA userID and then your password
IMPORTANT
Remember to comment-out the first line of this script (the line installing openvpn and wget) if they are already installed, though it will still work if you decide not to comment-out otiose lines...(comment-out 'sudo apt-get install openvpn wget' if already installed)
As this is a basic script, no lock symbol will appear (even when you are connected to the VPN). You may test that the VPN is working simply by checking the geolocation of your IP address from your browser.
The script works from the  /etc/openvpn directory when you change directories using  'cd /etc/openvpn'
It uses wget to grab the PIA VPN server list using 'sudo wget https://www.privateinternetaccess.com/openvpn/openvpn.zip'
The PIA VPN server list is unzipped as follows: 'sudo unzip openvpn.zip'
There is a check to determine whether PIA VPN server locations have been installed:  'ls -l'
The user selects a server from the PIA VPN server list they would like to use and edits the script accordingly. A default PIA VPN server (contained in the script) is Switzerland but any PIA VPN server may be selected
To change from the default (Swiss) PIA VPN server to another server, simply amend the last line by deleting reference to the Swiss PIA VPN server and insert the name of the PIA VPN server you would prefer to use.
For example, to change from the Swiss to the London server; edit the last line of the script to 'UK London.ovpn' instead of Switzerland.ovpn as below:
'sudo openvpn Switzerland.ovpn' becomes 'sudo openvpn UK London.ovpn'
The file is made executable with 'sudo chmod +x'
Please check whether VPN services are permitted by law in the jurisdiction in which you intend to use them
Nothing in this script does or is intended to endorse or encourage the use of Virtual Private Networks in jurisdictions in which they are prohibited by law. Check the law in your jurisdiction before using any software, including this script.
TODO
The script in current form may cache passwords in memory. A later version may use 'auth-nocache' options to prevent this
Version 0.1 - Amber Alligator
Paul Roche (c) 2017
