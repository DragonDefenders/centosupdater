#!/bin/bash
printf "        
                  #############################
                  # CentOS Script Installer   #
                  #############################
                #################################
                #This script MUST be run as root#
                #################################
   ##############################################################
   # Welcome, This script will install scipts for you and stuff #
   ##############################################################\n\n"
function questions() {
read -p "Would you like to install yumUpdater? [y/n] " answerInstallYumUpdater
read -p "Do you want to download clamavinstaller? [y/n] " answerInstallClamavInstaller
read -p "Would you like to update path? [y/n] " answerUpdatePath
}
questions

if [[ $answerInstallYumUpdater = y ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/clamavinstaller.sh --no-check-certificate -O /root/clamavinstaller.sh
fi

if [[ $answerInstallYumUpdater = y ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/yumUpdater.sh --no-check-certificate -O /root/yumUpdater.sh
fi

if [[ $answerUpdatePath = y ]] ; then
	PATH=$PATH /sbin
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'
