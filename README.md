# Linux setup

```
./step1_installNecessary
```

- Setting
- [ ] Theme
- [ ] Background
- [ ] Shortcut

  - [ ] Flameshot > flameshot gui
  - [ ] Switch to HDMI > pactl set-card-profile 0 output:hdmi-stereo
  - [ ] Switch to PC > pactl set-card-profile 0 output:analog-stereo

- [ ] Language > input > Vietnamese > teni
- [ ] Time format > USA
- [ ] Power
- [ ] Privacy
- Twice - [ ] top bar > format stuff
- Ubuntu software > install hide top bar (I don't like top bar, away show)

Extension
1 pop shell

```sh
cd ~/.local/share/gnome-shell/extensions/
git clone https://github.com/pop-os/shell
cd shell
sh rebuild.sh
sudo make install
gnome-extensions enable pop-shell@system76.com
```

2 hide top bar

```sh
cd ~/.local/share/gnome-shell/extensions/
git clone https://github.com/mlutfy/hidetopbar.git hidetopbar@mathieu.bidon.ca
cd hidetopbar@mathieu.bidon.ca
make schemas
cd ..
gnome-extensions enable hidetopbar@mathieu.bidon.ca
```

ok let restart gnome run this:

```sh
gnome-shell --replace &
```

" or just restart

**I don't like dock**

```sh
sudo apt remove gnome-shell-extension-ubuntu-dock
```

**update stuff**

- Restart
- SSH key setup
- Edit file ./step2_gitSetup > change
  **don't edit If want my name and email in your git system ;)**

```
    echo "
    [user]
    name = #your_name
    email = #your_email
    " > ~/.gitconfig
```

```
./step2_gitSetup
```

```
==> DONE
```

## Q & A

**Who you are?**

- I'm noob, just that
