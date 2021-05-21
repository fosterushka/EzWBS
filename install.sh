# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changing php sudo update-alternatives --config php
# // sudo apt install redis
# // alias webstart, webstop
# //todo Redis manger GUI
# git clone https://github.com/ErikDubbelboer/phpRedisAdmin.git
# cd phpRedisAdmin
# git clone https://github.com/nrk/predis.git vendor
# nginx for laravel | try_files $uri $uri/ /index.php?$query_string;
#This small gist will add automaticaly wsl.host to hosts file and you will be able to communicate with your windows system, using wsl.host as address.
#After creating your wsl do next:
#Place startup.sh at /startup.sh and run chmod +x /startup.sh
#Run visudo
#Add %sudo ALL=NOPASSWD: /startup.sh to end of file
#Add sudo /startup.sh at end of file /etc/profile
#That's all. After first login in wsl after system start wsl.host will point to your windows host
# nvm install $ver, nvm list, nvm use $ver
#Inspired by https://gist.github.com/irazasyed/a7b0a079e7727a4315b9 and openserver
#add to .gitconfig for split work and home [includeIf "gitdir:/var/www/all/"]
    #                                               path = ~/work/.gitconfig


echo "update 0.0.19"
read -p "Choose php version 5.6 to 8.0, recommend 7.4 : " phpVer
echo "You choosed php $phpVer";
echo "Before Installtion please type your password for install all software as root"
sleep 1

sudo apt install software-properties-common curl -y
sudo add-apt-repository ppa:nginx/stable -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt-get install mc arj dbview libaspell-dev links python zip bash-completion -y
sudo apt-get install gcc g++ make -y
sudo apt-get install mysql-client mysql-common mysql-server -y 
sudo apt-get install composer git -y
sudo apt-get install php$phpVer php$phpVer-bcmath php$phpVer-bz2 php$phpVer-cli php$phpVer-common php$phpVer-curl php$phpVer-dba php$phpVer-dev php$phpVer-enchant php$phpVer-fpm php$phpVer-gd php$phpVer-gmp php$phpVer-imap php$phpVer-intl php$phpVer-json php$phpVer-mbstring php$phpVer-mysql php$phpVer-opcache php$phpVer-phpdbg php$phpVer-pspell php$phpVer-readline php$phpVer-soap php$phpVer-tidy php$phpVer-xml php$phpVer-xmlrpc php$phpVer-xsl php$phpVer-zip whois -y
sudo apt install nginx nginx-extras -y
echo "Php,composer,git,mysql,nginx have been installed"
sleep 1

echo "Now nodejs will be installed"
sleep 1
# //NVM provides you easy way to manage NodeJS and NPM version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo "Restart terminal and do this command for install latest NPM | nvm install node --lts"
sleep 3
echo "Installation complete enjoy !"

