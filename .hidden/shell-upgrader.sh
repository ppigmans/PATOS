#!/bin/sh
clear
echo "Welcome to the Shell upgrade script made by Patrick Pigmans"
echo
echo "Welkom bij het Shell upgrade script gemaakt door Patrick Pigmans"
echo
echo "This script is combined with the raspberry-pi-install scripts"
echo
echo "Dit script werkt samen met raspberry-pi-install scripts"
echo
lsb_release -a
echo
echo "Above this line of text is your current shell version"
echo "De text hier boven is de huidige shell versie"
echo 
sleep 2
echo "Please note that the Shell version 16.04 is Experimental"
echo "let op, Shell versie 16.04 is experimenteel"
sleep 2
echo "WARNING DO NOT ATTEMPT TO DOWNGRADE FROM A HIGHER VERSION TO A LOWER ONE, THIS WILL END UP WITH YOU REINSTALLING"
echo "WAARSCHUWING, PROBEER NIET TE DOWNGRADEN VAN EEN HOGERE VERSIE NAAR EEN LAGERE, DIT ZORGT ER VOOR DAT U OPNIEUW MOET INSTALLEREN"
sleep 3
read -p "Do you with to upgrade to a new shell version? (Y/N)"
echo "Wilt u upgraden naar een nieuwe shell versie? (Y/N)"
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
echo
echo "Launching upgrader"
echo "upgrader starten"
else
echo
echo "Exiting upgrader"
echo "upgrader afsluiten"
exit 1
fi

PS3="Pick Your Version (1-5):"
echo "Kies uw versie (1-5):"
select name in 14.04 14.10 15.04 15.10 16.04
do
	break
done
echo "You chose $name."
echo "U koos $name."

if [ "$name" = "14.04" ]; then
echo "Stand by"
echo "Wachten AUB"
echo
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://nl.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching upgrade"
echo "Herschrijving succesvol afgerond, upgrade starten"
sleep 2
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 14.04.2"
echo "upgrade gelukt, welkom bij 14.04.2"
echo
echo "rebooting"
echo "Herstarten"
echo
history -c
echo `reboot`
exit 1
fi


if [ "$name" = "14.10" ]; then
echo
echo "Stand by"
echo "Wachten AUB"
echo
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://nl.archive.ubuntu.com/ubuntu/ utopic main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ utopic main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ utopic-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ utopic-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching upgrade"
echo "Herschrijving succesvol afgerond, upgrade starten"
sleep 2
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 14.10"
echo "upgrade gelukt, welkom bij 14.10"
echo
echo "rebooting"
echo "Herstarten"
history -c
echo `reboot`
exit 1
fi


if [ "$name" = "15.04" ]; then
echo
echo "Stand by"
echo "wachten AUB"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://nl.archive.ubuntu.com/ubuntu/ vivid main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ vivid main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ vivid-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ vivid-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ vivid-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ vivid-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ vivid-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo
echo "rewrite successfull, now launching upgrade"
echo "herschrijving succesvol afgerond, upgrade starten"
echo
sleep 2
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 15.04"
echo "upgrade gelukt, welkom bij 15.04"
echo
echo "rebooting"
echo "Herstarten"
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "15.10" ]; then
echo "Stand by"
echo "wachten AUB"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://nl.archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ wily-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ wily-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching upgrade"
echo "herschrijving succesvol afgerond, upgrade starten"
echo
sleep 2
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 15.10"
echo "upgrade gelukt, welkom bij 15.10"
echo
echo "rebooting"
echo "Herstarten"
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "16.04" ]; then

echo "Stand by"
echo "Wachten AUB"
cp /etc/apt/sources.list /etc/apt/sources.list.bk
rm -rf /etc/apt/sources.list

echo "deb http://nl.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo "deb http://nl.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "# deb-src http://nl.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

sleep 2
echo 
echo "rewrite successfull, now launching upgrade"
echo
sleep 2
apt-get -q autoremove --purge -y
apt-get clean
apt-get -q update -y
apt-get -q upgrade -y
apt-get -q dist-upgrade
sleep 2
echo "upgrade successfull, welcome to 16.04 (expirimental)"
echo
echo "rebooting"
history -c
echo `reboot`
exit 1
fi
