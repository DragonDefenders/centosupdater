#!/bin/bash
printf "        
                  #############################
                  # CentOS Rkhunter Installer #
                  #############################
                #################################
                #This script MUST be run as root#
                #################################
   ##############################################################
   # Welcome, This script will install scipts for you and stuff #
   ##############################################################\n\n"
function questions() {
read -p "Would you like to install rkhunter? [y/n] " answerInstallRkhunter
read -p "Would you like to run rkhunter? [y/n] " answerRunRkhunter
}
questions

if [[ $answerInstallYumUpdater = y ]] ; then
  wget --no-check-certificate -O /usr/local/src/rkhunter.tar.gz https://sourceforge.net/projects/rkhunter/files/rkhunter/1.4.2/rkhunter-1.4.2.tar.gz
  tar xvzf rkhunter.tar.gz
  cd /usr/local/src/rkhunter-*
  chmod +x installer.sh
  ./installer.sh

if [[ $answerRunChkrootkit = y ]] ; then
  rkhunter -c
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'
