#!/bin/bash

# https://github.com/htr-tech/zphisher

if [[ $(uname -o) == *'Android'* ]];then
	EVIL-PHISHER_ROOT="/data/data/com.termux/files/usr/opt/Evil-Phisher"
else
	export EVIL-PHISHER_ROOT="/opt/Evil-Phisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Evil-Phisher type \`Evil-Phisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $EVIL-PHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $EVIL-PHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $EVIL-PHISHER_ROOT
	bash ./Evil_Phisher.sh
fi
