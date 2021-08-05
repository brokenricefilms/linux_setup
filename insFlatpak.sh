#! /usr/bin/env sh

sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.discordapp.Discord -y
flatpak install com.obsproject.Studio -y
flatpak install org.onlyoffice.desktopeditors -y
flatpak install org.audacityteam.Audacity -y
flatpak install md.obsidian.Obsidian -y
