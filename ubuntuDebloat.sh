#! /usr/bin/env sh

sudo snap remove snap-store
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-34-1804
sudo snap remove core18
sudo snap remove snapd

rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd

sudo apt remove --purge gnome-calculator -y
sudo apt autoremove --purge gnome-calendar -y
sudo apt-get autoremove --purge gucharmap* -y
sudo apt-get autoremove --purge gnome-contacts* -y
sudo apt-get remove --purge sane* simple-scan -y
sudo apt remove --purge gnome-font-viewer -y
sudo apt-get autoremove --purge yelp* -y
sudo apt remove --purge gnome-power-manager -y
