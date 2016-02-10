#!/bin/bash
printf "        
                  #############################
                  # CentOS Clamav Installer   #
                  #############################
                #################################
                #This script MUST be run as root#
                #################################
   ##############################################################
   # Welcome, This script will install clamav for you and run a #
   #          scan                                              #
   ##############################################################\n\n"
function questions() {
read -p "Would you like to update yum.conf? [y/n] " answerUpdateSources
read -p "Do you want to download clamav? [y/n] " answerDownloadClamav
read -p "Would you like to configure and install clamav? [y/n] " answerInstallClamav
read -p "would you like to run a scan? [y/n] " answerRunScan 
}

questions

if [[ $answerUpdateSources = y ]] ; then
	cd /etc
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/yum.conf --no-check-certificate
	cd /etc
	echo | cat yum.conf.1 > yum.conf
fi

if [[ $answerDownloadClamav = y ]] ; then
	cd /home
	wget https://www.clamav.net/downloads/production/clamav-0.97.3.tar.gz --no-check-certificate
	cd /home
	tar -xzvf clamav-0.97.3.tar.gz
fi

if [[ $answerInstallClamav = y ]] ; then
	cd /home/clamav-0.97.3
	./configure
	make
	make install
fi

if [[ $answerRunScan = y ]] ; then
	freshclam
	clamscan -r /etc /home /tmp 
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'

