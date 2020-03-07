# linux_setup

-   Run step1
-   Setting
    _ Shortcut
    _ Languge > unikey
    \_ Time format, Power, Privacy
-   Twice > Turn off animation > Change theme
-   Ubuntu software > install hide top bar

```
Sudo apt remove gnome-shell-extension-ubuntu-dock
```

-   Restart
-   Create ssh key > copy ssh key to github OR using old ssh key
-   Edit file ./step2_gitSetup > change

```
    echo "
    [user]
    name = #your_name
    email = #your_email
    " > ~/.gitconfig
```

    >>> Run ./step2_gitSetup

-   Run ./step3_runSudoMaster
