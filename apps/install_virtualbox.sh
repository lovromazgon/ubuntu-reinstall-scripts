sudo apt-get -y install dkms
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key -y add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian vivid contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt-get -y update
sudo apt-get -y --force-yes install virtualbox-5.0