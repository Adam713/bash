#!/bin/bash
#echo I ❤ Adam_ALwan | lolcat -a -d 500
figlet I ❤ Adam_ALwan | lolcat
echo -e "1)airmon-n " #ifconfig wlan1 down + iwconfig wlan1 mode monitor + ifconfig wlan1 up
echo -e "2)START Monitor mode"
echo -e "3) aireplay-ng network "
echo -e "4) aireplay-ng mac Target "
echo -e "5)airodump "

#echo -e "3)Run Hostapd "
#echo -e "4)Run dnsmasq "
echo -e "6)Clear "
#echo -e "6) airmon-n start "
echo -e "0)Exit "
while true; do
read -p "please Enter Yor Option > " tryag
if [[ $tryag -eq '1' ]]; then
echo -e "Whait...!"
sleep 2
sudo airmon-ng
#sudo ifconfig wlan1 down
#sudo iwconfig wlan1 mode monitor
#sudo ifconfig wlan1 up
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '2' ]]; then
echo -e "Whait...!"
sleep 0
read -p "Enter Intrface :# " i
sudo airmon-ng start $i
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '3' ]]; then
echo -e "Whait...!"
read -p "Enter Intrface :# " i
read -p "Enter number channel :# " c
sudo iwconfig $i channel $c
read -p "Enter Bssid :# " bssid
read -p "Enter number of packet :# " packet
read -p "Enter Intrface :# " i
sleep 1
sudo xterm -e aireplay-ng -0 $packet -a $bssid $i
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '4' ]]; then
echo -e "Whait...!"
sleep 1
sudo xterm dnsmasq -C dnsmasq.conf -d
read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '5' ]]; then
echo -e "Whait...!"
read -p "Enter Intrface :# " i
sleep 0
sudo xterm -e airodump-ng $i

#read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '6' ]]; then
echo -e "Whait...!"
sleep 1
clear

read -p "please Enter Yor Option > " tryag
elif [[ $tryag -eq '0' ]]; then
echo -e "Whait...!"
sleep 2
exit
echo -e "Bye...!"
else
echo "Wrong Options..!"
fi
done
