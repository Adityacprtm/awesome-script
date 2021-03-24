#!/bin/bash

# @author Aditya Chamim Pratama

# Color Reset
Color_Off='\033[0m' # Reset

# Regular Colors
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow
Blue='\033[0;34m'   # Blue
Purple='\033[0;35m' # Purple
Cyan='\033[0;36m'   # Cyan

echo -e "\n ${Cyan} Updating package...${Color_Off}"
sudo apt update -qq
sudo apt upgrade -yqq

echo -e "\n ${Cyan} Installing zsh...${Color_Off}"
sudo apt install zsh -yqq

echo -e "\n ${Cyan} Installing oh my zsh...${Color_Off}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n ${Cyan} Clone powerlevel10k...${Color_Off}"
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "\n ${Green} Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc ${Color_Off}"
echo -e "\n ${Green} Install font 👉 https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k"
echo -e "\n ${Green} Relog terminal, run: p10k configure"

echo -e "\n ${Green} SUCCESS! Powerlevel10k installed on ohmyzsh 🚀 ${Color_Off}"
