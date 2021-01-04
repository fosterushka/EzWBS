# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changin php sudo update-alternatives --config php

set -e

if [[ $EUID -ne 0 ]]; then
	echo "Make sure run as root (with sudo)"
	exit 1
fi

sudo apt install software-properties-common curl
sudo add-apt-repository ppa:nginx/stable
sudo add-apt-repository ppa:ondrej/php
sudo apt update -y
sudo apt-get install mc arj dbview libaspell-dev links python zip bash-completion
sudo apt-get install gcc g++ make
sudo apt-get install mysql-client mysql-common mysql-server
sudo apt-get install composer git
sudo apt-get install php7.2 php7.2-bcmath php7.2-bz2 php7.2-cli php7.2-common php7.2-curl php7.2-dba php7.2-dev php7.2-enchant php7.2-fpm php7.2-gd php7.2-gmp php7.2-imap php7.2-intl php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-phpdbg php7.2-pspell php7.2-readline php7.2-recode php7.2-soap php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip whois
sudo apt install nginx nginx-extras
echo "Php7.2,composer,git,mysql,nginx have been installed"

# //NVM provides you easy manage Node and NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node --lts

