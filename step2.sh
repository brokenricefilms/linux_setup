#!/usr/bin/env bash

cd ~/
git clone https://github.com/thuanpham2311/dotfiles
cd ~/dotfiles
git switch linux

cd ~/linux_setup
./config_linux.sh
