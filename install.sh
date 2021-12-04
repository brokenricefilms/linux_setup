#! /usr/bin/env sh

while true; do
    read -p "1: Ubuntu, 2: Fedora, 3: Arch (1/2/3)?" distro
    case $distro in
        [1]* ) curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/ubuntuStep1.sh | bash ; curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/ubuntuDebloat.sh | bash ; break ;;
        [2]* ) curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/fedoraStep1.sh | bash ; break;;
        [3]* ) curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/archStep1.sh | bash ; break;;
        * ) echo "chosse your linux distro bros";;
    esac
done

while true; do
    read -p "Do you install flatpak relate stuff?" yn
    case $yn in
        [Yy]* ) curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/installFlatpak.sh | bash; break;;
        [Nn]* ) exit;;
        * ) echo "press y or n bros";;
    esac
done

https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/step2.sh | bash
