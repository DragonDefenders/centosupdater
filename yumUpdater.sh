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
   #                            scan                            #
   ##############################################################\n\n"
function questions() {
read -p "Would you like to update yum.conf? [y/n] " answerUpdateSources
}

questions

if [[ $answerUpdateSources = y ]] ; then
	cd /etc
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/yum.conf --no-check-certificate
	cd /etc
	echo | cat yum.conf.1 > yum.conf
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'

