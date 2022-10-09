#!/bin/bash
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin && makepkg -si
yay -S alacritty xcursor-simp1e-catpuccin zscroll-git micro fish exa bspwm sxhkd feh polybar xorg-xsetroot xorg-xbacklight light pamixer picom-jonaburg-git dunst rofi flameshot ksuperkey nerd-fonts-jetbrains-mono polkit-gnome fm6000 network-manager-applet helix xfce4-power-manager betterlockscreen zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-zsh-git catppuccin-gtk-theme-mocha tela-icon-theme-git --needed
git clone https://github.com/RexDoisPontoZero/bspwm-dotfiles.git --depth 1
cd bspwm-dotfiles
mkdir $HOME/.config
mkdir $HOME/.local
mkdir $HOME/.local/bin
cp -r .config/* ~/.config/
chmod -r +x ~/.config/bspwm
cp .zshrc ~
cp .zshrc-personal ~
mkdir ~/.local/bin
cp -r .local/bin/* ~/.local/bin
chmod -R +x ~/.local/bin
betterlockscreen -u ~/.config/bspwm/backgrounds/tropic_island_night.png
sudo systemctl enable betterlockscreen@$USER.service
echo Done
