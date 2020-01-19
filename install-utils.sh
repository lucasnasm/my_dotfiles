#!/bin/sh



echo "Welcome $USER"

echo 'Refresh pacman mirrors with manjaro'
sudo pacman-mirrors -f
sudo pacman -Syu

echo 'Removing unnecessary drivers manjaro'

if lspci | grep --quiet Intel
then
    echo "Removing Other drivers"
    sudo pacman -Rc xf86-video-amdgpu xf86-video-ati xf86-video-nouveau
fi


echo 'Installing Browsers'
sudo pacman -S firefox 

echo 'Verify manual'
yay google chrome


echo 'zsh'
sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting zsh-completions 

echo 'I3 misc'
sudo pacman -S rofi py3status 

echo 'Xfce4 tools'
sudo pacman -S xfce4-terminal xfce4-notifyd xfce4-battery-plugin

echo 'Installing misc'
sudo pacman -S thunar gvfs tumbler thunar-volman thunar-archive-plugin unzip keepassxc redshift python-xdg  gpa zip xarchiver 

echo 'Installing JS KIT'
#coming soon

echo 'Removing all cache '
sudo pacman -Sc
