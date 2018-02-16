#!/bin/bash
set -e

curl https://install.meteor.com/ | sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

nvm install 8
nvm use 8

npm install --global npm
npm install --global mup
npm install --global uup
npm install --global pm2-meteor

apt-get update -y
