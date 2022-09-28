#!/bin/bash # Bash Shell

echo "Remove old nodejs"
echo "+----------------+"
sudo apt-get purge --auto-remove nodejs --yes

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

echo "Remove ng-common"
echo "+--------------+"
sudo apt-get purge --auto-remove ng-common --yes

echo "Check angular version"
echo "+--------------------+"
ng version

echo "Get node version 16 source code"
echo "+-----------------------------+"
wget https://deb.nodesource.com/setup_16.x -O ./bash-script-nodejs-setup_16.x.sh

echo "Setup nodejs version 16 from source code"
echo "+---------------------------------------+"
sudo -E bash ./bash-script-nodejs-setup_16.x.sh
sudo apt-get install -y nodejs

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

echo "Install angular"
echo "+----------------+"
sudo npm install -g @angular/cli@14 --yes --yes --yes
echo "Check angular version"
echo "+--------------------+"
ng version

echo "Autoremove.."
echo "+-----------------------+"
sudo apt autoremove
echo "+-----------------------+"

exit 0