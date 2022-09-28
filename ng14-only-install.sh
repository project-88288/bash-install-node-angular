#!/bin/bash # Bash Shell

echo "Check node and npm version"
echo "+------------------------+"
node -v
npm -v

echo "Check angular"
echo "+--------------------+"
echo $(which ng)

echo "Remove ng-common"
echo "+--------------+"
sudo apt-get purge --auto-remove ng-common --yes

echo "Check angular version"
echo "+--------------------+"
ng version

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