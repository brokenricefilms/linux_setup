#!/usr/bin/env bash

cd ~/
git clone https://github.com/thuanpham2311/dotfiles

mkdir ~/backupDotfile
mv ~/.config/nvim ~/backupDotfile
mv ~/.config/kitty ~/backupDotfile
mv ~/.fonts ~/backupDotfile

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cd ~/dotfiles/zsh/functions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/Aloxaf/fzf-tab
git clone https://github.com/chitoku-k/fzf-zsh-completions
cd

curl -fsSL https://starship.rs/install.sh | bash

dconf load /org/gnome/desktop/wm/keybindings/ <~/dotfiles/keybindings.dconf
sudo ln -sf /usr/bin/kitty /usr/bin/gnome-terminal

ln -sf ~/dotfiles/bin/ ~/
ln -sf ~/sync/ok/.tinypng ~/.tinypng
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/ssh/config ~/.ssh/config/
ln -sf ~/dotfiles/nvim ~/.config/
ln -sf ~/dotfiles/kitty/ ~/.config/
ln -sf ~/dotfiles/bat/ ~/.config/
ln -sf ~/dotfiles/copyq.conf ~/.config/copyq/copyq.conf
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gh_config.yml ~/.config/gh/config.yml
ln -sf ~/dotfiles/git/lazygit_config.yml ~/.config/lazygit/config.yml
ln -sf ~/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/sync/ok/.fonts ~/.fonts
cd ~/dotfiles/.fonts
fc-cache -v
ln -sf ~/dotfiles/gtk.css ~/.config/gtk-3.0/gtk.css
ln -sf ~/dotfiles/touchcursor ~/.config/
ln -sf ~/dotfiles/starship.toml ~/.config/
ln -sf ~/dotfiles/.ripgreprc ~/
ln -sf ~/dotfiles/topgrade.toml ~/.config/topgrade.toml
ln -sf ~/dotfiles/input-remapper/ ~/.config/input-remapper/

cowsay "Light theme by default, you can change by using 'dark' command after restart shell"
echo "
set background=light
colorscheme zenbones
highlight markdownH1 guifg=#2C363C guibg=NONE guisp=NONE gui=bold
" >~/dotfiles/nvim/after/plugin/themeControl.vim
echo "include ./paper.conf" >~/dotfiles/kitty/theme.conf
echo "--theme=\"GitHub\"" >~/dotfiles/bat/config
cd ~/
