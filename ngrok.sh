#!/bin/bash


#Colors
grn='\e[0;32m'
red='\e[1;31m'
yellow='\e[1;33m'
RedF="${Escape}[31m"
LighGreenF="${Escape}[92m"
blue='\e[1;34m'



# Check root
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; echo ; exit 1; }
clear


clear
echo -e $red "█▀▄ █▀█ █░█░█ █▄░█ █░░ █▀█ ▄▀█ █▀▄   █▄░█ █▀▀ █▀█ █▀█ █▄▀"; sleep 0.2
echo -e $grn "█▄▀ █▄█ ▀▄▀▄▀ █░▀█ █▄▄ █▄█ █▀█ █▄▀   █░▀█ █▄█ █▀▄ █▄█ █░█"; sleep 0.2    
echo 
echo -e $grn"Do you want to install Ngrok? [Y/n]"
read selection
case $selection in
y)
    clear
    echo
    sleep 0.4
    printf "Please wait..[                    ] 0% "
    sleep 0.4
    clear
    printf "Please wait..[=====               ] 25%"
    sleep 0.4
    clear
    printf "Please wait..[==========          ] 50%"
    sleep 0.4
    clear
    printf "Please wait..[===============     ] 75%"
    sleep 0.4
    clear
 printf "Please wait..[====================] 100%"
sleep 0.4
 clear


if [ $choose -eq y ]
then
clear
apt install wget
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok.zip
fi

if [ $choose -eq n ]
then
echo "OK"

fi


echo -e $red "███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo -e $grn "████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo -e $red "██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo -e $grn "██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo -e $red "██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo -e $grn "╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";



read -p "but your token" token


/data/data/com.termux/files/usr/bin/ngrok authtoken $token

/data/data/com.termux/files/usr/bin/ngrok http 80

fi
