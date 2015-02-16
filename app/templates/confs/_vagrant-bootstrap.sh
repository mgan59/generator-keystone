#!/bin/bash

##############################################
######### SETUP
##############################################

if ! command -v git >/dev/null 2>&1; then
    echo "INSTALL GIT"
    apt-get -y install git
fi


###############################################
######### BUILD STEPS
###############################################

if ! command -v node >/dev/null 2>&1; then
    echo "INSTALL NODE/NPM"
    cd /usr/local/
    wget -q http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz
    tar -xvzf node-v0.10.33-linux-x64.tar.gz
    mv node-v0.10.33-linux-x64 node
    ln -s /usr/local/node/bin/node /usr/local/bin/node
    ln -s /usr/local/node/bin/npm /usr/local/bin/npm
    cd -
fi

###############################################
######### RUN
###############################################

echo "RUNNING <%= utils.slug(projectName) %> VAGRANT"

