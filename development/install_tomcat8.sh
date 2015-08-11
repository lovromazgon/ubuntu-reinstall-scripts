#!/bin/bash
# define static values
opt="/opt/"
tomcat_version="8.0.24"
tomcat_name="apache-tomcat-${tomcat_version}"
tomcat_folder="$opt$tomcat_name"
tomcat_url="http://www.apache.si/tomcat/tomcat-8/v${tomcat_version}/bin/${tomcat_name}.tar.gz"
tomcat_symlink="${opt}apache-tomcat"
temp_folder="$HOME/tomcat_install_temp/"
temp_filepath="$temp_folder$tomcat_name.tar.gz"

echo "Installing Tomcat $tomcat_version"

# create temp dir
echo "Creating temporary folder $temp_folder"
mkdir $temp_folder

# download and extract tomcat
wget "$tomcat_url" -O "$temp_filepath"
echo "Extracting tomcat to $opt"
sudo tar -zxf "$temp_filepath" -C "$opt"

echo "Creating symlink $tomcat_symlink to $tomcat_folder"
sudo ln -s "$tomcat_folder" "$tomcat_symlink"
echo "Adding 'tomcat' to the path"
sudo ln -s "$tomcat_symlink/bin/catalina.sh" "/usr/local/bin/tomcat"

echo "Setting owner of $tomcat_folder to $USER"
sudo chown -R "$USER":"$USER" "$tomcat_folder" "$tomcat_symlink"

# remove temp dir
echo "Deleting temporary folder ~/tomcat_install_temp"
rm -r $temp_folder

echo "Done!"
echo "You can start tomcat with the command 'tomcat start' and stop with 'tomcat stop'"