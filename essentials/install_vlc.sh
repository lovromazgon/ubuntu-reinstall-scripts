#!/bin/bash
sudo apt-get -y install vlc
sudo sed -i 's/totem/vlc/g' /usr/share/applications/defaults.list
sudo sed -i 's/totem/vlc/g' /etc/gnome/defaults.list

# change navigation keys
vlcrc="$HOME/.config/vlc/vlcrc"

sed -i 's/^#key-nav-up=.*/key-nav-up=/g' $vlcrc
sed -i 's/^#key-nav-down=.*/key-nav-down=/g' $vlcrc
sed -i 's/^#key-nav-left=.*/key-nav-left=/g' $vlcrc
sed -i 's/^#key-nav-right=.*/key-nav-right=/g' $vlcrc

# change jump keys
sed -i 's/^#key-jump-extrashort=.*/key-jump-extrashort=Left/g' $vlcrc
sed -i 's/^#key-jump+extrashort=.*/key-jump+extrashort=Right/g' $vlcrc
sed -i 's/^#key-jump-short=.*/key-jump-short=Shift+Right/g' $vlcrc
sed -i 's/^#key-jump+short=.*/key-jump+short=Shift+Right/g' $vlcrc

# change volume keys
sed -i 's/^#key-vol-up=.*/key-vol-up=Up/g' $vlcrc
sed -i 's/^#key-vol-down=.*/key-vol-down=Down/g' $vlcrc

# change encoding to eastern european Windows-1250
sed -i 's/^#subsdec-encoding=.*/subsdec-encoding=Windows-1250/g' $vlcrc