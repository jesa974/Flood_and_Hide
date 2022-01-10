#!/bin/bash

# Probleme parce que "su" doit se faire dans un terminal
# echo toor | su -S root
# echo $?

# Check des ports
nmap -h

if [ $? -e 1 ]
then
        echo "Nmap : Not installed"
else
	nmap -p80 | grep -v grep | grep "(1 hosts up)" |wc -l
	if [ $? -e 0 ]
        then
                echo "Port 80 : Not up"
        fi

	nmap -p8080 | grep -v grep | grep "(1 hosts up)" |wc -l
	if [ $? -e 0 ]
        then
                echo "Port 8080 : Not up"
        fi

	nmap -p22 | grep -v grep | grep "(1 hosts up)" |wc -l
	if [ $? -e 0 ]
	then
        	echo "Port 22 : Not up"
	fi
fi


# Check de la faille log4j
git --help

if [ $? -e 1 ]
then
	echo "Git : Not installed"
else
	git clone https://github.com/fullhunt/log4j-scan
	if [ $? -e 1 ]
        then
                echo "Git clone : Unsuccessfull"
        else
		python3 -h
		if
			echo "Pyhthon3 : Not installed"
		else
			python3 ./log4j-scan/log4j-scan.py -u "$IP"
		fi
	fi
fi

# Recuperation de l'adresse IP
IP=`ip a | grep "eth0" -A 5 | grep -v "inet6" | grep "inet" | awk '{print $2}' | cut -d"/" -f1`
echo $IP


