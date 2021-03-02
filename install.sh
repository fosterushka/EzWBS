# //todo: check dependencies such[gcc,make,curl]
# //todo: choosing language
# //todo choosing endpoint for domains [websites]
# //todo: changing php sudo update-alternatives --config php
# // sudo apt install redis
# // alias webstart, webstop
#
# //todo Redis manger GUI
# git clone https://github.com/ErikDubbelboer/phpRedisAdmin.git
# cd phpRedisAdmin
# git clone https://github.com/nrk/predis.git vendor
#
# touch .wslconfig Introduce %UserProfile%\.wslconfig file for tweaking WSL2 settings
# [wsl2]
#kernel=<path>              # An absolute Windows path to a custom Linux kernel.
#memory=<size>              # How much memory to assign to the WSL2 VM.
#processors=<number>        # How many processors to assign to the WSL2 VM.
#swap=<size>                # How much swap space to add to the WSL2 VM. 0 for no swap file.
#swapFile=<path>            # An absolute Windows path to the swap vhd.
#localhostForwarding=<bool> # Boolean specifying if ports bound to wildcard or localhost in the WSL2 VM should be connectable from the host via localhost:port (default true).
#update system check if repository have a new version then pull changes or do a command which will do an update

set -e

if [[ $EUID -ne 0 ]]; then
	echo "Make sure run as root (with sudo)"
	exit 1
fi
echo "update 0.0.18"
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
sudo apt-get install php$phpVer php$phpVer-bcmath php$phpVer-bz2 php$phpVer-cli php$phpVer-common php$phpVer-curl php$phpVer-dba php$phpVer-dev php$phpVer-enchant php$phpVer-fpm php$phpVer-gd php$phpVer-gmp php$phpVer-imap php$phpVer-intl php$phpVer-json php$phpVer-mbstring php$phpVer-mysql php$phpVer-opcache php$phpVer-phpdbg php$phpVer-pspell php$phpVer-readline php$phpVer-soap php$phpVer-tidy php$phpVer-xml php$phpVer-xmlrpc php$phpVer-xsl php$phpVer-zip whois -y
sudo apt install nginx nginx-extras -y
echo "Php7.4,composer,git,mysql,nginx have been installed"
sleep 1

echo "Now node will be installed"
sleep 1
# //NVM provides you easy manage Node and NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo "Restart terminal and do this command for install latest npm version nvm install node --lts"
sleep 3
echo "Installation compleate enjoy !"

