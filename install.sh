# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changin php sudo update-alternatives --config php
#!/bin/bash


set -e

if [[ $EUID -ne 0 ]]; then
	echo "Make sure run as root" 
	exit 1
fi


echo "This is script for automatic setting up webserver and dependencies [mysql,php,nodejs,nginx,make,git,composer,python,zip,mc,gcc]."
sleep 2
echo "Starting"
sleep 2

#using awk to find out user's distro
OS=`awk '/NAME=/' /etc/os-release | tr '[:upper:]' \
'[:lower:]' | grep -o 'name=[^ ,]\+'`

input=false

if [[ $OS == *"ubuntu"* ]]; then
	distro="Ubuntu"
elif [[ $OS == *"debian"* ]]; then
	distro="Debian"
else
	echo "This script works only on Ubuntu, Debian."
	exit 1
fi


exit 1
#dependencies
sudo apt install software-properties-common curl
sudo apt-get install mc arj dbview libaspell-dev links python zip bash-completion
sudo apt-get install gcc g++ make
sudo apt-get install composer git


exit 1
phpinstall() {
    echo "Now script will add ppa:ondrej/php best repository with PHP type Y/N default Y"
    promptPHP="Y"
    if [[$promptPHP == "Y"]]; then
        sudo add-apt-repository ppa:ondrej/php

        echo "Select PHP version"
        read -p "Select PHP version from 5.6 up to 8.0 recommend 7.2-7.4" : PHPVER

        echo "You choosed PHP $PHPVER"
        sudo apt-get install php$PHPVER php$PHPVER-bcmath php$PHPVER-bz2 php$PHPVER-cli php$PHPVER-common php$PHPVER-curl php$PHPVER-dba php$PHPVER-dev php$PHPVER-enchant php$PHPVER-fpm php$PHPVER-gd php$PHPVER-gmp php$PHPVER-imap php$PHPVER-intl php$PHPVER-json php$PHPVER-mbstring php$PHPVER-mysql php$PHPVER-opcache php$PHPVER-phpdbg php$PHPVER-pspell php$PHPVER-readline php$PHPVER-recode php$PHPVER-soap php$PHPVER-tidy php$PHPVER-xml php$PHPVER-xmlrpc php$PHPVER-xsl php$PHPVER-zip whois
    fi
}


sudo add-apt-repository ppa:nginx/stable
sudo apt update -y

sudo apt-get install mysql-client mysql-common mysql-server
sudo apt install nginx nginx-extras
echo "Php$PHPVER,composer,git,mysql,nginx have been installed"


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node --lts

