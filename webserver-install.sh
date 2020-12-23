# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changin php sudo update-alternatives --config php

echo "Select PHP Version 7.1 / 7.2 / 7.3 / 7.4: "
read PHPVER

echo "You choosed PHP $PHPVER"

exit 1

sudo apt install software-properties-common curl
sudo add-apt-repository ppa:nginx/stable
sudo add-apt-repository ppa:ondrej/php
sudo apt update -y
sudo apt-get install mc arj dbview libaspell-dev links python zip bash-completion
sudo apt-get install gcc g++ make
sudo apt-get install mysql-client mysql-common mysql-server
sudo apt-get install composer git
sudo apt-get install php$PHPVER php$PHPVER-bcmath php$PHPVER-bz2 php$PHPVER-cli php$PHPVER-common php$PHPVER-curl php$PHPVER-dba php$PHPVER-dev php$PHPVER-enchant php$PHPVER-fpm php$PHPVER-gd php$PHPVER-gmp php$PHPVER-imap php$PHPVER-intl php$PHPVER-json php$PHPVER-mbstring php$PHPVER-mysql php$PHPVER-opcache php$PHPVER-phpdbg php$PHPVER-pspell php$PHPVER-readline php$PHPVER-recode php$PHPVER-soap php$PHPVER-tidy php$PHPVER-xml php$PHPVER-xmlrpc php$PHPVER-xsl php$PHPVER-zip whois
sudo apt install nginx nginx-extras
echo "Php$PHPVER,composer,git,mysql,nginx have been installed"


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node --lts

