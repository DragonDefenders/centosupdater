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
read -p "Would you like to install chkrootkitInstaller? [y/n] " answerChkrootkitInsaller
read -p "Would you like to install rkhunterInstaller? [y/n] " answerRkhunterInsaller
read -p "Would you like to install tripwireInstaller? [y/n] " answerTripwireInsaller
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

if [[ $answerChkrootkitInsaller ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/chkrootkitInstaller.sh --no-check-certificate -O /root/chkrootkitInstaller.sh
fi

if [[ $answerRkhunterInstaller ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/rkhunterInstaller.sh --no-check-certificate -O /root/rkhunterInstaller.sh
fi

if [[ $answerTripwireInstaller ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/tripwireInstaller.sh --no-check-certificate -O /root/tripwireInstaller.sh
fi


function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'
