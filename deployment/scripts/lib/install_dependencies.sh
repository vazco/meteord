#!/bin/bash
set -e

npm cache clear --force

npm install --global npm
npm install --global mup
npm install --global uup
npm install --global pm2-meteor

ln -sf /opt/nodejs/bin/mup /usr/bin/mup
ln -sf /opt/nodejs/bin/uup /usr/bin/uup
ln -sf /opt/nodejs/bin/pm2-meteor /usr/bin/pm2-meteor

echo "Install meteor"
curl https://install.meteor.com/ | sh

echo "Install nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "Install node 6, 7 and 8"
nvm install 6
nvm install 7
nvm install 8

apt-get update -y
