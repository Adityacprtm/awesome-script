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

# INSTALLING UPDATE AND NECESSARY SOFTWARE
echo -e "\n ${Cyan} Updating and Installing package repositories.. ${Color_Off}"
sudo apt -qq update
sudo apt -yq upgrade
sudo apt install -yq build-essential
sudo apt install -yq software-properties-common

# INSTALLING APACHE
# echo -e "\n ${Cyan} Installing Apache.. ${Color_Off}"
# sudo apt -qq update
# sudo apt install -yq apache2 apache2-doc
# sudo service apache2 start
# check Apache configuration: apachectl configtest

# INSTALLING PHP7 or Latest
echo -e "\n ${Cyan} Installing PHP and common Modules.. ${Color_Off}"
sudo apt -qq update
sudo apt -yq install php php-common libapache2-mod-php php-curl php-dev php-gd php-imagick php-intl php-mbstring php-mysql php-pear php-pspell php-xml php-zip php-xmlrpc php-soap php-cli

# Enable mod_rewrite, required for WordPress permalinks and .htaccess files
echo -e "\n ${Cyan} Enabling Modules.. ${Color_Off}"
sudo apt -qq update
sudo a2enmod rewrite
#PHP7
sudo phpenmod mbstring
sudo service apache2 restart

# INSTALLING PYTHON
echo -e "\n ${Cyan} Installing Python2 and Python3.. ${Color_Off}"
sudo apt -qq update
sudo apt install -yq python3
sudo apt install -yq python2

# INSTALLING NODEJS
echo -e "\n ${Cyan} Installing NodeJs and NPM.. ${Color_Off}"
sudo apt -qq update
sudo apt install -yq nodejs
sudo apt install -yq npm

# NPM Global Setup
echo -e "\n ${Cyan} Setup NPM global.. ${Color_Off}"
sudo apt -qq update
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile

# INSTALLING COMPOSER
echo -e "\n ${Cyan} Installing Composser and common modules.. ${Color_Off}"
sudo apt -qq update
sudo apt install -yq php-cli unzip zip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Configure Timezone
sudo ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

# 🚀🚀🚀
echo -e "\n ${Green} SUCCESS! WSL READY FOR LAUNCH 🚀 ${Color_Off}"
