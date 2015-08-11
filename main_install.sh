#!/bin/bash
now=$(date +"%Y%m%d")
output="install_$now.log"
echo "Hello! Essentials, apps and development will be installed!"
echo -n "Install? (y/n) > "
read install

if { [ "$install" = "y" ] || [ "$install" = "Y" ] ; } then
	echo "Starting installation" | tee $output
	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing essentials" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "essentials" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing apps" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "apps" $output

	echo "" | tee -a $output
	echo "======================" | tee -a $output
	echo "Installing development" | tee -a $output
	echo "======================" | tee -a $output
	./install_scripts_in_folder.sh "development" $output
	
	echo ""
	echo "======================"
	echo "Done! You will find the log files in the same folder as this script!"
else
	echo "Exiting without installation"
fi