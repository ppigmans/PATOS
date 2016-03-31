#!/bin/sh/
clear
echo "Dit Script is gemaakt door Patrick Pigmans"
echo
sleep 2
echo "PATOS is maakt door Patrick Pigmans"
echo
sleep 2
echo "Welkom bij het PATOS Installatie script, dit script zal er voor zorgen dat de laaste nieuwe software zal worden geinstalleert op de computer met PATOS draaiende."
sleep 1
echo
echo "Dit zal helaas behoorlijk wat tijd in beslag nemen, maar zodra hij geinstalleert is werkt alles zoals het behoord en is alles geupdate" 
echo
sleep 1
echo "Zorg er voor dat de computer een netwerk aansluiting heb en zonder problemen op het stroom kan zitten"
echo
sleep 1
echo "enige stroom verlies kan zorgen voor het corruptie van het systeem"
echo
sleep 2
PS3="Kies uw DE (1-6)(LXQT is nog niet getest):" 
select name in Verwijderen LXDE XFCE MATE LXQT Exit
do 
 	break 
done 
echo "U koos $name."

if [ "$name" = "Verwijderen" ]; then
echo 
echo "Begin van het verwijderen"
echo
sleep 3
apt-get -f install -y
apt-get -q remove --purge -y ntp*
apt-get -f install -y
apt-get -q remove --purge -y lxde*
apt-get -f install -y
apt-get -q remove --purge -y lightdm*
apt-get -f install -y
apt-get -q remove --purge -y xfce*
apt-get -f install -y
apt-get -q remove --purge -y mate*
apt-get -f install -y
apt-get -q remove --purge -y e17*
apt-get -f install -y
apt-get -q remove --purge -y lxqt*
apt-get -f install -y
apt-get -q remove --purge -y xinit*
apt-get -f install -y
apt-get -q remove --purge -y git*
apt-get -f install -y
apt-get -q remove --purge -y curlftpfs*
apt-get -f install -y
apt-get -q remove --purge -y alacarte*
apt-get -f install -y
apt-get -q remove --purge -y xcompmgr*
apt-get -f install -y
apt-get -q remove --purge -y linux-firmware*
apt-get -f install -y
apt-get -q remove --purge -y curl*
apt-get -f install -y
apt-get -q remove --purge -y libcurl4-gnutls-dev*
apt-get -f install -y
apt-get -q remove --purge -y libxerces-c3*
apt-get -f install -y
apt-get -q remove --purge -y icaclient*
apt-get -f install -y
apt-get -q remove --purge -y nomachine*
apt-get -f install -y
apt-get autoremove --purge -y
apt-get -f install -y
apt-get clean
reboot 
exit 1
fi

if [ "$name" = "LXDE" ]; then
echo 
echo "Begin installatie van LXDE "
echo
sleep 3

apt-get -q update
apt-get -f install -y
apt-get -q install plymouth -y
apt-get -f install -y
apt-get -q install plymouth-themes -y
apt-get -f install -y
apt-get -q install plymouth-label -y
apt-get -f install -y
apt-get -q install lxde -y
apt-get -f install -y
apt-get -q install lightdm -y
apt-get -f install -y
apt-get -q install xinit -y
apt-get -f install -y
apt-get -q install git -y
apt-get -f install -y
apt-get -q install curlftpfs -y
apt-get -f install -y
apt-get -q install curl -y
apt-get -f install -y
apt-get -q install alacarte -y
apt-get -f install -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -f install -y
apt-get -q install xcompmgr -y
apt-get -f install -y
apt-get -q install linux-firmware
apt-get -f install -y
apt-get -q install libxerces-c3.1 -y
apt-get -f install -y
dpkg -i ./.hidden/TV.deb
apt-get -f install -y
dpkg -i ./.hidden/citrix-rec.deb
apt-get -f install -y
apt-get -q install ntp -y
apt-get -f install -y
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacerts

echo
sleep 3

echo "config.txt aan het herschrijven"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt
cp /etc/modules /etc/modules.bk
cp ./.hidden/modules /etc/modules
echo
sleep 3
echo "Herschrijving voltooid"
echo 
sleep 3
echo "Opruimen van systeem en downloads"
echo
apt-get -f install -y
apt-get install lightdm-gtk-greeter -y
apt-get -f install -y
apt-get -qq remove --purge -y lxdm
apt-get -f install -y
apt-get -qq autoremove --purge -y
apt-get -f install -y
apt-get -qq clean -y
apt-get -f install -y
echo
sleep 2
echo "problemen oplossen en laaste software verwijderen"
apt-get -f install -y
apt-get -qq remove pulseaudio -y
apt-get -f install -y
apt-get -qq remove chromium*
apt-get -f install -y
 
echo
cp ./.hidden/ntp.conf /etc/ntp.conf
cp ./.hidden/36.png /usr/share/lxde/images/lxde-icon.png
cp ./.hidden/352.png /usr/share/lxde/images/logout-banner.png
cp ./.hidden/2048.png /usr/share/lxde/wallpapers/lxde_green.jpg
cp ./.hidden/2048.png /usr/share/lxde/wallpapers/lxde_blue.jpg
cp ./.hidden/2048.png /usr/share/lxde/wallpapers/lxde_red.jpg

sleep 2
echo "Herstarten"
echo "Na de herstart typ het volgende"


sleep 5
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "LXQT" ]; then
echo 
echo "Begin installatie van LXQT"
echo
sleep 3
apt-get -f install -y
apt-get -q update
apt-get -f install -y
apt-get -q install plymouth -y
apt-get -f install -y
apt-get -q install plymouth-themes -y
apt-get -f install -y
apt-get -q install plymouth-label -y
apt-get -f install -y
apt-get -q install lxqt -y
apt-get -f install -y
apt-get -q install lightdm -y
apt-get -f install -y
apt-get -q install xinit -y
apt-get -f install -y
apt-get -q install git -y
apt-get -f install -y
apt-get -q install curlftpfs -y
apt-get -f install -y
apt-get -q install curl -y
apt-get -f install -y
apt-get -q install alacarte -y
apt-get -f install -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -f install -y
apt-get -q install xcompmgr -y
apt-get -f install -y
apt-get -q install linux-firmware
apt-get -f install -y
apt-get -q install libxerces-c3.1 -y
apt-get -f install -y
dpkg -i ./.hidden/TV.deb
apt-get -f install -y
dpkg -i ./.hidden/citrix-rec.deb
apt-get -f install -y
apt-get -q install ntp -y
apt-get -f install -y
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacerts

cp /etc/sudoers /etc/sudoers.bk
rm /etc/sudoers


echo
sleep 3

echo "config.txt aan het herschrijven"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt
cp /etc/modules /etc/modules.bk
cp ./.hidden/modules /etc/modules
echo
sleep 3
echo "Herschrijving voltooid"
cp /etc/passwd /etc/passwd.bk
cp ./.hidden/passwd /etc/passwd
echo
sleep 3
echo "Opruimen van systeem en downloads"
echo
apt-get -f install -y
apt-get install lightdm-gtk-greeter -y
apt-get -f install -y
apt-get -qq autoremove --purge -y
apt-get -f install -y
apt-get -qq clean -y
apt-get -f install -y
echo
sleep 2
echo "Begin herschrijven van lightdm-gtk-greeter.conf en overige bestanden in plaats zetten"

 
echo
cp ./.hidden/ntp.conf /etc/ntp.conf
sleep 2
echo "Herstarten"
echo "Na de herstart typ het volgende"


echo 
sleep 5
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "XFCE" ]; then
echo
echo "Begin van de installatie van XFCE4"
echo
sleep 3

apt-get -q update
apt-get -f install -y
apt-get -q install plymouth -y
apt-get -f install -y
apt-get -q install plymouth-themes -y
apt-get -f install -y
apt-get -q install plymouth-label -y
apt-get -f install -y
apt-get -q install xfce4 -y
apt-get -f install -y
apt-get -q install lightdm -y
apt-get -f install -y
apt-get -q install git -y
apt-get -f install -y
apt-get -q install curlftpfs -y 
apt-get -f install -y
apt-get -q install curl -y
apt-get -f install -y
apt-get -q install alacarte -y
apt-get -f install -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -f install -y
apt-get -q install xcompmgr -y
apt-get -f install -y
apt-get -q install lightdm-gtk-greeter -y
apt-get -f install -y
apt-get -q install linux-firmware
apt-get -f install -y
apt-get -q install libxerces-c3.1 -y
apt-get -f install -y
dpkg -i ./.hidden/TV.deb
apt-get -f install -y
dpkg -i ./.hidden/citrix-rec.deb
apt-get -f install -y
apt-get -q install ntp -y
apt-get -f install -y
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacerts

sleep 3
echo
echo "config bestand aan het herschrijven"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt
cp /etc/modules /etc/modules.bk
cp ./.hidden/modules /etc/modules
echo
sleep 3
echo "Herschrijving voltooid"
echo 
sleep 3
echo "Opruimen van systeem en downloads"
echo
apt-get -f install -y
apt-get -qq autoremove --purge -y
apt-get -f install -y
apt-get -qq clean -y
apt-get -f install -y

apt-get -f install -y
sleep 2
echo
cp ./.hidden/ntp.conf /etc/ntp.conf
echo "Herstarten"
echo "Na de herstart typ het volgende"


echo 
sleep 5
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "MATE" ]; then
echo "Mate is alleen beschikbaar vanaf 14.10"
echo
echo "Begin van de installatie van MATE"
echo
sleep 3

apt-get -q update
apt-get -f install -y
apt-get -q install plymouth -y
apt-get -f install -y
apt-get -q install plymouth-themes -y
apt-get -f install -y
apt-get -q install plymouth-label -y
apt-get -f install -y
apt-get -q install mate-core -y
apt-get -f install -y

apt-get -f install -y

apt-get -f install -y
apt-get -q install lightdm -y
apt-get -f install -y
apt-get -q install git -y
apt-get -f install -y
apt-get -q install curlftpfs -y 
apt-get -f install -y
apt-get -q install curl -y
apt-get -f install -y
apt-get -q install alacarte -y
apt-get -f install -y
apt-get -q install libcurl4-gnutls-dev -y
apt-get -f install -y
apt-get -q install xcompmgr -y
apt-get -f install -y
apt-get -q install lightdm-gtk-greeter -y
apt-get -f install -y
apt-get -q install linux-firmware
apt-get -f install -y
apt-get -q install libxerces-c3.1 -y
apt-get -f install -y
dpkg -i ./.hidden/TV.deb
apt-get -f install -y
dpkg -i ./.hidden/citrix-rec.deb
apt-get -f install -y
apt-get -q install ntp -y
apt-get -f install -y
ln /usr/lib/arm-linux-gnueabihf/libcurl.so /usr/lib/arm-linux-gnueabihf/libcurl.so.4
ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
c_rehash /opt/Citrix/ICAClient/keystore/cacerts


echo
echo "Software is geinstalleerd"
echo

sleep 3
echo "config bestand aan het herschrijven"
echo
cp /boot/config.txt /boot/config.txt.bk
rm /boot/config.txt

echo "# For more options and information see" >> /boot/config.txt
echo "# http://www.raspberrypi.org/documentation/configuration/config-txt.md" >> /boot/config.txt
echo "# Some settings may impact device functionality. See link above for details" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if you get no picture on HDMI for a default "safe" mode" >> /boot/config.txt
echo "#hdmi_safe=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment this if your display has a black border of unused pixels visible" >> /boot/config.txt
echo "# and your display can output without overscan" >> /boot/config.txt
echo "#disable_overscan=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment the following to adjust overscan. Use positive numbers if console" >> /boot/config.txt
echo "# goes off screen, and negative if there is too much border" >> /boot/config.txt
echo "#overscan_left=16" >> /boot/config.txt
echo "#overscan_right=16" >> /boot/config.txt
echo "#overscan_top=16" >> /boot/config.txt
echo "#overscan_bottom=16" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a console size. By default it will be display's size minus" >> /boot/config.txt
echo "# overscan." >> /boot/config.txt
echo "#framebuffer_width=1280" >> /boot/config.txt
echo "#framebuffer_height=720" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment if hdmi display is not detected and composite is being output" >> /boot/config.txt
echo "#hdmi_force_hotplug=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a specific HDMI mode (this will force VGA)" >> /boot/config.txt
echo "#hdmi_group=1" >> /boot/config.txt
echo "#hdmi_mode=1" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to force a HDMI mode rather than DVI. This can make audio work in" >> /boot/config.txt
echo "# DMT (computer monitor) modes" >> /boot/config.txt
echo "#hdmi_drive=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment to increase signal to HDMI, if you have interference, blanking, or" >> /boot/config.txt
echo "# no display" >> /boot/config.txt
echo "#config_hdmi_boost=4" >> /boot/config.txt
echo >> /boot/config.txt
echo "# uncomment for composite PAL" >> /boot/config.txt
echo "#sdtv_mode=2" >> /boot/config.txt
echo >> /boot/config.txt
echo "#uncomment to overclock the arm. 700 MHz is the default." >> /boot/config.txt
echo "arm_freq=1000" >> /boot/config.txt
echo "core_freq=500" >> /boot/config.txt
echo "sdram_freq=500" >> /boot/config.txt
echo "over_voltage=2" >> /boot/config.txt
echo "dtoverlay=vc4-kms-v3d" >> /boot/config.txt
echo "device_tree=" >> /boot/config.txt
cp /etc/modules /etc/modules.bk
cp ./.hidden/modules /etc/modules
echo
sleep 3
echo "Herschrijving voltooid"
echo
sleep 3
echo "Opruimen van systeem en downloads"
echo
apt-get -f install -y
apt-get -qq autoremove --purge -y
apt-get -f install -y
apt-get -qq clean -y
apt-get -f install -y
sleep 2
echo "Section \"ServerFlags\" " >> /etc/X11/xorg.conf
echo "	Option \"DontVTSwitch\" \"true\" " >> /etc/X11/xorg.conf
echo "EndSection" >> /etc/X11/xorg.conf
apt-get -f install -y

apt-get -f install -y
 
echo mate-session > /home/ubuntu/.xsession
echo mate-session > /root/
sleep 2
echo
cp ./.hidden/ntp.conf /etc/ntp.conf
echo "Herstarten"
echo "Na de herstart typ het volgende"


echo 
sleep 5
history -c
echo `reboot`
exit 1
fi

if [ "$name" = "Exit" ]; then
echo 
echo "Afsluiten van script"
