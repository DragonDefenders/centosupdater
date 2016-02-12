#!/bin/bash
printf "        
                  #############################
                  #    CentOS Yum Updater     #
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
read -p "Would you like to install the epel from Centos 4? [y/n] " answerEpelInstall
}

questions

if [[ $answerUpdateSources = y ]] ; then
	wget https://raw.githubusercontent.com/DragonDefenders/centosupdater/master/yum.conf --no-check-certificate -O /etc/yum.conf.1
	cat /etc/yum.conf > /root/oldyum.conf
	cat /etc/yum.conf.1 > /etc/yum.conf
fi

if [[ $answerUpdateSources = y ]]; then
	wget https://dl.fedoraproject.org/pub/epel/4/x86_64/epel-release-4-10.noarch.rpm -O /etc/epel-release-4-10.noarch.rpm
	rpm -i /etc/epel-release-4-10.narch.rpm
fi

function pause () {
        read -p "$*"
}

pause '
press [Enter] key to exit...
'

