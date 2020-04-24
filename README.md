# linux_setup

```
./step1_installNecessary
```

-   Setting
-   [ ] Theme
-   [ ] Background
-   [ ] Shortcut

    -   [ ] Flameshot > flameshot gui
    -   [ ] Switch to HDMI > pactl set-card-profile 0 output:hdmi-stereo
    -   [ ] Switch to HDMI > pactl set-card-profile 0 output:analog-stereo

-   [ ] Languge > input > Vietnamese > teni
-   [ ] Time format > USA
-   [ ] Power
-   [ ] Privacy
-   Twice
    -   [ ] top bar > format stuff
**I don't like top bar, away show"
-   Ubuntu software > install hide top bar

**I don't like dock**
```
sudo apt remove gnome-shell-extension-ubuntu-dock
```

**update stuff**
-   Restart
-   SSH key setup
**don't edit If want my name and email in your git system ;)**
-   Edit file ./step2_gitSetup > change

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
