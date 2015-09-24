#!/bin/bash
opt="/opt/"
intellij_version="14.1.4"
temp_folder="$HOME/intellij_install_temp/"
temp_filepath="$temp_folder$intellij_name.tar.gz"
edition="IC"
edition_name="Community"

echo "Intellij Community is scheduled to be installed"

intellij_name="idea${edition}-${intellij_version}"
intellij_url="https://download.jetbrains.com/idea/${intellij_name}.tar.gz"

echo "Installing Intellij $edition_name $intellij_version"

# create temp dir
echo "Creating temporary folder $temp_folder"
mkdir $temp_folder

# download and extract intellij
wget "$intellij_url" -O "$temp_filepath"
echo "Extracting intellij to $opt"
sudo tar -zxf "$temp_filepath" -C "$opt"

intellij_folder=$(find /opt/ -maxdepth 1 -name 'idea-*')

echo "Setting owner of $intellij_folder to $USER"
sudo chown -R "$USER":"$USER" $intellij_folder 

echo "Executing idea.sh - finish the Intellij Idea installation and quit after you are done!"
( exec $intellij_folder/bin/idea.sh )

# remove temp dir
echo "Deleting temporary folder $temp_folder"
rm -r $temp_folder

echo "Done!"