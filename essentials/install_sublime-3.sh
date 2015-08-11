#!/bin/bash
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get -y update
sudo apt-get -y install sublime-text-installer
sudo sed -i 's/gedit/sublime-text/g' /usr/share/applications/defaults.list
sudo sed -i 's/gedit/sublime-text/g' /etc/gnome/defaults.list

install_preferences=true

if [ -f ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ]; then
	echo "The preferences file already exists!"
	echo "Filepath: ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings"
	echo -n "Do you want to overwrite it? (y/n) > "
	read choice
	if ! { [ "$choice" = "y" ] || [ "$choice" = "Y" ]; } then
		install_preferences=false
	fi
fi

if [ "$install_preferences" = true ]; then
	#copy file to folder
	echo "Copying Preferences.sublime-settings to ~/.config/sublime-text-3/Packages/User/ ..."
	/bin/cp Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User
	echo "Done! Enjoy sublime!"
else
	echo "Exiting without copying anything"
fi