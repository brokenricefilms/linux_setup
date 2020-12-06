#!/usr/bin/env bash

mkdir ~/git ; cd ~/git/

git clone https://github.com/thuanpham2311/dotfiles
# git clone git@github.com:thuanpham2311/dotfiles.git
# git clone git@github.com:thuanpham2311/lazyscript.git
# git clone git@github.com:thuanpham2311/linux_setup.git
# git clone git@github.com:thuanpham2311/dataLab.git
# git clone git@github.com:thuanpham2311/FreeCodeCampProject.git
# git clone git@github.com:thuanpham2311/vimium_dark_theme.git
# git clone git@github.com:thuanpham2311/windowsSetup.git
# git clone git@github.com:thuanpham2311/termuxSetup.git
# git clone git@github.com:thuanpham2311/img.git
# git clone git@github.com:thuanpham2311/thuanpham2311.git
# git clone git@github.com:thuanpham2311/four-card-feature-section.git
# git clone git@github.com:thuanpham2311/theNewsTimes.git
# git clone git@github.com:thuanpham2311/calculatorOnIOS.git
# git clone git@github.com:thuanpham2311/ok.git

mkdir ~/.config/nvim
mkdir ~/.config/fish
mkdir ~/.config/vifm
mkdir ~/.config/tmux
mkdir ~/.config/zsh
mkdir ~/.config/kitty
mkdir ~/.config/autokey

dconf load /org/gnome/desktop/wm/keybindings/ < ~/git/dotfiles/keybindings.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/ < ~/git/dotfiles/gnome-terminal-profiles.dconf
cp -r ~/git/dotfiles/vifm/* ~/.config/vifm/
cp -r ~/git/dotfiles/nvim/* ~/.config/nvim/
cp -r ~/git/ok/undodir ~/.config/nvim/
cp ~/git/dotfiles/tmux/.tmux.conf ~/.config/tmux/
ln -s ~/.config/tmux/.tmux.conf ~/
cp -r ~/git/dotfiles/zsh/* ~/.config/zsh/
cp -r ~/git/dotfiles/zsh/.zshrc ~/.config/zsh/
ln -s ~/.config/zsh/.zshrc ~/
cp ~/git/dotfiles/git/.gitconfig ~/
cp ~/git/dotfiles/.selected_editor ~/
cp -r ~/git/dotfiles/.fonts ~/
cd ~/.fonts ; fc-cache -v
cp -r ~/git/dotfiles/kitty/* ~/.config/kitty/
cp -r ~/git/dotfiles/autokey/* ~/.config/autokey
cd
