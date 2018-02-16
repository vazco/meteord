#!/bin/bash
set -e

npm install --global npm
npm install --global mup
npm install --global uup
npm install --global pm2-meteor

curl https://install.meteor.com/ | sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

nvm install 6
nvm install 7
nvm install 8

apt-get update -y
