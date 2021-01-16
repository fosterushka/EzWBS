# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changing php sudo update-alternatives --config php

#set -e
#
#if [[ $EUID -ne 0 ]]; then
#	echo "Make sure run as root (with sudo)"
#	exit 1
#fi

read -p "Choose php version 5.6 to 8.0, recommend 7.4 : " phpVer
sleep 1
echo "You choosed php $phpVer";
sleep 1
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
sudo apt-get install php$phpver php$phpver-bcmath php$phpver-bz2 php$phpver-cli php$phpver-common php$phpver-curl php$phpver-dba php$phpver-dev php$phpver-enchant php$phpver-fpm php$phpver-gd php$phpver-gmp php$phpver-imap php$phpver-intl php$phpver-json php$phpver-mbstring php$phpver-mysql php$phpver-opcache php$phpver-phpdbg php$phpver-pspell php$phpver-readline php$phpver-recode php$phpver-soap php$phpver-tidy php$phpver-xml php$phpver-xmlrpc php$phpver-xsl php$phpver-zip whois -y
sudo apt install nginx nginx-extras -y
echo "Php$phpver,composer,git,mysql,nginx have been installed"
sleep 1

echo "Now node will be installed"
sleep 1
# //NVM provides you easy manage Node and NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node --lts

