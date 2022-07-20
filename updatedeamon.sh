#!/bin/bash
clear
echo "XeonPanel Deamon v0.8 Update Script"
echo "Copyright © 2022 Xeonpanel."
echo "For support join our community: https://discord.gg/4y9X28Ubxd"
sleep 1s
echo ""
if [ "$(id -u)" != "0" ]; then
    printf "This script must be run as root\nYou can login as root with\033[0;32m sudo su -\033[0m\n" 1>&2
    exit 1
fi
read -p "Are you sure you want to continue? [y/n] " installation
if [[ $installation == "y" || $installation == "Y" || $installation == "yes" || $installation == "Yes" ]]
then
    clear
    echo "Updating deamon ( v0.8 )"
    echo ""
    sleep 1s
    cd /etc
	sudo service deamon stop
	rm -rf deamon
	sudo git clone https://github.com/Xeonpanel/Deamon.git deamon
	sudo service deamon start
else
    echo ""
    echo " --> Update cancelled"
    echo ""
fi
exit