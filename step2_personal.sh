#!/usr/bin/env bash

cd ~/
git clone git@github.com:thuanpham2311/dotfiles.git

mkdir ~/sync/
cd ~/sync/
git clone git@github.com:thuanpham2311/ok.git
git clone git@github.com:thuanpham2311/note.git
cd ~/.local/share/
git clone git@github.com:thuanpham2311/garden.git
cd

cd ~/linux_setup
./config_linux.sh
