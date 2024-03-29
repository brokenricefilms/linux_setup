#! /usr/bin/env sh

cd /tmp
wget https://github.com/ful1e5/Google_Cursor/releases/download/v1.1.3/GoogleDot-Blue.tar.gz
tar -xvf GoogleDot-Blue.tar.gz
sudo mv GoogleDot-Blue/ /usr/share/icons/
cd -

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cd ~/dotfiles/zsh/functions/
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting
git clone --depth=1 https://github.com/Aloxaf/fzf-tab
git clone --depth=1 https://github.com/chitoku-k/fzf-zsh-completions
cd

mkdir ~/backupDotfile
mv ~/.config/nvim ~/backupDotfile
mv ~/.config/kitty ~/backupDotfile
mv ~/.fonts ~/backupDotfile

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
ln -sf ~/dotfiles/onlyoffice/ ~/.config/
ln -sf ~/dotfiles/.ripgreprc ~/
ln -sf ~/dotfiles/topgrade.toml ~/.config/topgrade.toml
ln -sf ~/dotfiles/input-remapper/ ~/.config/
ln -sf ~/dotfiles/thefuck~/dotfiles/thefuck/settings.py ~/.config/thefuck/
ln -sf ~/dotfiles/mimeapps.list ~/.config/mimeapps.list
ln -sf ~/dotfiles/htop/htoprc ~/.config/htop/
ln -sf ~/sync/obs-studio/ ~/.config/
ln -sf ~/dotfiles/foot ~/.config/
ln -sf ~/sync/ok/ibus-bamboo.macro.text ~/.config/ibus-bamboo/

mkdir ~/repos/
cd ~/repos/
gh repo clone thuanpham2311/viet_eng_words_vim_dict
cd -

sudo ln -sf ~/repos/viet_eng_words_vim_dict/words /usr/share/dict/words
