#!/bin/bash
printf "        
                  #############################
                  #CentOS Chkrootkit Installer#
                  #############################
                #################################
                #This script MUST be run as root#
                #################################
   ##############################################################
   # Welcome, This script will install scipts for you and stuff #
   ##############################################################\n\n"
function questions() {
read -p "Would you like to install chkrootkit? [y/n] " answerInstallChkrootkit
read -p "Would you like to run chkrootkit? [y/n] " answerRunChkrootkit
}
questions

if [[ $answerInstallYumUpdater = y ]] ; then
  wget ftp://ftp.pangeia.com.br/pub/seg/pac/chkrootkit.tar.gz -O /usr/local/src/chkrootkit.tar.gz
  tar xvzf chkrootkit.tar.gz
  cd /usr/local/src/chkrootkit-*
  make sense
fi

if [[ $answerRunChkrootkit = y ]] ; then
  cd /usr/local/src/chkrootkit-*
  ./chkrootkit
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'
