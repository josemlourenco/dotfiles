#!/usr/bin/env bash

brew install neovim

git clone --depth 1 https://github.com/LazyVim/starter ~/.config/nvim && nvim --headless -c 'autocmd User LazyVimEnter silent! lua require("lazy").sync(); quit'
rm -rf ~/.config/nvim/.git

wget -qO- https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip | unzip -q - && mkdir -p ~/.fonts && mv "JetBrainsMonoNerdFont-Regular.ttf" "JetBrainsMonoNerdFont-Bold.ttf" "JetBrainsMonoNerdFont-Italic.ttf" "JetBrainsMonoNerdFont-BoldItalic.ttf" ~/.fonts/ && fc-cache -fv && gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.Legacy.Profile:/default | tr -d \')/ font 'JetBrainsMono Nerd Font Mono 12' && rm JetBrainsMono.zip "JetBrainsMonoNerdFont-Regular.ttf" "JetBrainsMonoNerdFont-Bold.ttf" "JetBrainsMonoNerdFont-Italic.ttf" "JetBrainsMonoNerdFont-BoldItalic.ttf"