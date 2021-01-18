# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changing php sudo update-alternatives --config php

set -e

if [[ $EUID -ne 0 ]]; then
	echo "Make sure run as root (with sudo)"
	exit 1
fi

read -p "Choose php version 5.6 to 8.0, recommend 7.4 : " phpVer
echo "You choosed php $phpVer";
echo "Before Installtion start please type your password for install all software as root"
sleep 1

sudo apt install software-properties-common curl -y
sudo add-apt-repository ppa:nginx/stable -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt-get install mc arj dbview libaspell-dev links python zip bash-completion -y
sudo apt-get install gcc g++ make -y
sudo apt-get install mysql-client mysql-common mysql-server -y 
sudo apt-get install composer git -y
sudo apt-get install php7.4 php$phpVer-bcmath php$phpVer-bz2 php$phpVer-cli php$phpVer-common php$phpVer-curl php$phpVer-dba php$phpVer-dev php$phpVer-enchant php$phpVer-fpm php$phpVer-gd php$phpVer-gmp php$phpVer-imap php$phpVer-intl php$phpVer-json php$phpVer-mbstring php$phpVer-mysql php$phpVer-opcache php$phpVer-phpdbg php$phpVer-pspell php$phpVer-readline php$phpVer-recode php$phpVer-soap php$phpVer-tidy php$phpVer-xml php$phpVer-xmlrpc php$phpVer-xsl php$phpVer-zip whois -y
sudo apt install nginx nginx-extras -y
echo "Php7.4,composer,git,mysql,nginx have been installed"
sleep 1

echo "Now node will be installed"
sleep 1
# //NVM provides you easy manage Node and NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node --lts

