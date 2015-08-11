#!/bin/bash
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ vivid partner' >> /etc/apt/sources.list.d/canonical_partner.list"
sudo apt-get -y update
sudo apt-get -y install skype
cp /usr/share/applications/skype.desktop ~/.config/autostart
