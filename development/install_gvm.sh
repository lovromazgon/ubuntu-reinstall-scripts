#!/bin/bash
sudo apt-get -y install curl
curl -s get.gvmtool.net | bash
source "${GVM_DIR}/bin/gvm-init.sh"

# change config to enable non-interactive mode
config="$GVM_DIR/etc/config"
sed -i 's/^gvm_auto_answer=.*/gvm_auto_answer=true/g' $config

# install gradle and groovy
gvm install gradle
gvm install groovy

# reset config
sed -i 's/^gvm_auto_answer=.*/gvm_auto_answer=false/g' $config
