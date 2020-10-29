# Linux setup

- **OS support: Ubuntu (distro I'm using right now), Fedora, Arch,...**

- **DE support: Gnome**

- **All my commit message is BS, don't waste your time read that**

## Demo

![](./img/linuxSetup1.png)
![](./img/linuxSetup2.png)

---

## Set up dudes

## Require

- Go lang | download file (https://golang.org/dl/)

> vim-hexokinase (nvim plugin) need go lang

## install (just copy and pasting to your terminal)

```bash
sudo apt install git
git clone https://github.com/thuanpham2311/linux_setup
cd linux_setup
# ubuntu (or base Debian using apt)
./ubuntuStep1.sh
# fedora (or other distro using dnf)
# ./fedoraStep1.sh
# arch linux (or other arch base)
# ./archStep1.sh
```

---

1.  Setting

    1. Theme > yaru-dark (ubuntu)
    2. Background
    3. Shortcut
       1. Flameshot `flameshot gui <super>+<shift>+<S>`
    4. Language > input > Vietnamese > ibus-bamboo
    5. Time format > USA
    6. Power > blank screen > never
    7. Privacy

2.  Gnome tweaks

    1. top bar > format stuff
    2. windows > center new windows
    3. keyboard > { remap caps lock -> esc }

3.  Extension

    1. pop shell

    ```bash
    cd ~/.local/share/gnome-shell/extensions/
    git clone https://github.com/pop-os/shell
    cd shell
    sh rebuild.sh
    ```

    2. hide top bar

    ```bash
    cd ~/.local/share/gnome-shell/extensions/
    git clone https://github.com/mlutfy/hidetopbar.git hidetopbar@mathieu.bidon.ca
    cd hidetopbar@mathieu.bidon.ca
    make schemas
    cd ..
    gnome-extensions enable hidetopbar@mathieu.bidon.ca
    ```

    > ok let restart gnome run this: `gnome-shell --replace &`
    > or just restart

4.  I don't like dock (For Ubuntu user, Fedora don't need do that)

`sudo apt remove gnome-shell-extension-ubuntu-dock`

5.  update stuff

    1. Restart
    2. SSH key setup
       `ssh-keygen`

6.  Edit file `./step2_gitSetup` > change

    > code it for yourself

    > don't edit If want **my name and email** in your git system ;)

```bash
echo "
[user]
name = #your_name
email = #your_email
" > ~/.gitconfig
```

---

`./step2_gitSetup`

```bash
 ______
< DONE >
 ------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

---

## freaking BUGS

1. Firefox tearing???????

`layers.acceleration.force-enabled` set it true and reboot

1. Fedora I have issue with Wayland so switch to Xorg

```
sudo nvim /etc/gdm/custom.conf

# should be
WaylandEnable=false
```

## Q & A

**Who am I?**

- I'm noob, just that

## Stargazers over time

[![Stargazers over time](https://starchart.cc/thuanpham2311/linux_setup.svg)](https://starchart.cc/thuanpham2311/linux_setup)
