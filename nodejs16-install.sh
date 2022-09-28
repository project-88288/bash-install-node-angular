#!/bin/bash # Bash Shell

echo "Remove old nodejs"
echo "+----------------+"
sudo apt-get purge --auto-remove nodejs --yes

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

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

echo "Autoremove.."
echo "+-----------------------+"
sudo apt autoremove
echo "+-----------------------+"

exit 0