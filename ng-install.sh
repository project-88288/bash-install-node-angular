#!/bin/bash # Bash Shell

echo "Remove old nodejs"
echo "+----------------+"
sudo apt-get purge --auto-remove nodejs

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

echo "Remove ng-common"
echo "+--------------+"
sudo apt-get purge --auto-remove ng-common 

echo "Check angular version"
echo "+--------------------+"
ng version

echo "Get node version 12 source code"
echo "+-----------------------------+"
wget https://deb.nodesource.com/setup_12.x -O ./bash-script-nodejs-setup_12.x.sh

echo "Setup nodejs version 12 from source code"
echo "+---------------------------------------+"
sudo -E bash ./bash-script-nodejs-setup_12.x.sh
sudo apt-get install -y nodejs

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

echo "Install angular@12"
echo "+----------------+"
sudo npm install -g @angular/cli@12 --yes
echo "Check angular version"
echo "+--------------------+"
ng version

echo "Autoremove.."
echo "+-----------------------+"
sudo apt autoremove
echo "+-----------------------+"

exit 0