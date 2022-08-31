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
echo 
echo -e $green"    ""╔--───────────────────────────────────────────--─╗"; sleep 0.5
echo -e $green"    ""|              <Made by Moemen_N7>               |"; sleep 0.5
echo -e $green"    ""|https://github.com/root69permission/Wifi-Control|"; sleep 0.5
echo -e $green"    ""┖--───────────────────────────────────────────--─┙"; sleep 0.5
echo -e $yellow"               ""Thanks For Using Wifi Control  :)"; sleep 0.5

echo -e $grn"================================================"; sleep 0.2
read -p "enter your token :- " token
echo -e $grn"================================================"; sleep 0.2



apt install wget
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
mv ngrok /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok-stable-linux-arm.zip
/data/data/com.termux/files/usr/bin/ngrok authtoken $token
ngrok http 80
