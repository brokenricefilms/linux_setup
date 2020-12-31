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
# git clone git@github.com:thuanpham2311/stuDarkTheme
# git clone git@github.com:thuanpham2311/cssbattle

mkdir ~/backupDotfile
mv ~/.config/nvim         ~/backupDotfile
mv ~/.config/kitty        ~/backupDotfile
mv ~/.fonts               ~/backupDotfile

curl -fsSL https://starship.rs/install.sh | bash
ln -sf ~/git/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/git/dotfiles/nvim ~/.config/nvim
ln -sf ~/git/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/git/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/git/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/git/dotfiles/.fonts ~/.fonts ; cd ~/git/dotfiles/.fonts ; fc-cache -v
ln -sf ~/git/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/git/dotfiles/.Xmodmap ~/.Xmodmap
ln -sf ~/git/dotfiles/kitty/ ~/.config/kitty/
ln -sf ~/git/ok/.tinypng ~/.tinypng
dconf load /org/gnome/desktop/wm/keybindings/ < ~/git/dotfiles/keybindings.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/ < ~/git/dotfiles/gnome-terminal-profiles.dconf
cd
