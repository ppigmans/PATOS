#!/bin/sh
read -p "Is dit een ON TO GO (y/n)"
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
cp ./.hidden/PATOSOTGgreen.png /usr/share/lxde/wallpapers/lxde_green.jpg
cp ./.hidden/PATOSOTGblue.png /usr/share/lxde/wallpapers/lxde_blue.jpg
cp ./.hidden/PATOSOTGred.png /usr/share/lxde/wallpapers/lxde_red.jpg
rm ./.hidden/2048green.png
rm ./.hidden/2048red.png
rm ./.hidden/2048blue.png
else
exit 1
fi