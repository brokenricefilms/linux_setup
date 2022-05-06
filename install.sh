#! /usr/bin/env sh

curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/step1.sh | bash

while true; do
  read -p "Do you install flatpak relate stuff?" yn
  case $yn in
  [Yy]*)
    curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/installFlatpak.sh | bash
    break
    ;;
  [Nn]*) exit ;;
  *) echo "press y or n bros" ;;
  esac
done

while true; do
  read -p "you are thuanpham2311?" yn
  case $yn in
  [Yy]*)
    echo "copied ssh key to github? (enter to continue)"
    read
    curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/step2.sh | bash
    break
    ;;
  [Nn]*) exit ;;
  *)
    curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/step2_personal.sh | bash
    ;;
  esac
done

curl https://raw.githubusercontent.com/thuanpham2311/linux_setup/master/step3.sh | bash
