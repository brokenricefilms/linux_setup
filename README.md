# Linux setup

```bash
./step1_installNecessary
```

---

1.  Setting

    1. Theme
    2. Background
    3. Shortcut

       1. Flameshot > flameshot gui
       2. Switch to HDMI > pactl set-card-profile 0 output:hdmi-stereo
       3. Switch to PC > pactl set-card-profile 0 output:analog-stereo

    4. Language > input > Vietnamese > teni
    5. Time format > USA
    6. Power
    7. Privacy

2.  Twice - [ ] top bar > format stuff
3.  Ubuntu software > install hide top bar (I don't like top bar, away show)

4.  Extension

    1. pop shell

       ```bash
       cd ~/.local/share/gnome-shell/extensions/
       git clone https://github.com/pop-os/shell
       cd shell
       sh rebuild.sh
       sudo make install
       gnome-extensions enable pop-shell@system76.com
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

    > ok let restart gnome run this:

        ```bash
        gnome-shell --replace &
        ```

    > or just restart

5.  I don't like dock

    ```bash
    sudo apt remove gnome-shell-extension-ubuntu-dock
    ```

6.  update stuff
    1. Restart
    2. SSH key setup
       ```bash
       ssh-keygen
       ```
       > or use old ssh key
7.  Edit file ./step2_gitSetup > change
    > don't edit If want my name and email in your git system ;)
        ```bash
            echo "
            [user]
            name = #your_name
            email = #your_email
            " > ~/.gitconfig
        ```

---

```bash
./step2_gitSetup
```

---

< DONE >

---

        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

---

## Q & A

**Who you are?**

- I'm noob, just that
