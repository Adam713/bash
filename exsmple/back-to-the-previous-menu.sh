#!/bin/bash
#Menu() {
<<a
  for (( ; ; ))
  do
  beginORload=
  echo "Choose option:"
  echo "1 - Begin"
  echo "2 - Load"
  read -p "?" beginORload
#}
#Begin() {
if [ "$beginORload" -eq "1" ]
  then
  clear
  for (( ; ; ))
  do
  echo "Beginning. What is your name?"
  read -p "?" name
  #If "prev" specified, go back to #Menu()
  if [ "$name" -eq "prev" ]
    then
    Menu
  fi
  #If nothing specified, return to name input
  if [ -z ${name+x} ]
    then
    Begin
    else
    break
  fi
  echo "Hi $name !"
  done
fi
done

a

while [[ $answer -ne '3' ]];do
echo "Choose option:"
echo "1 - Begin"
echo "2 - Load"
echo "3 - Exit"
read -p "Enter Answer [1-2-3]:" answer
case "$answer" in
    1) while [[ "$nm" == '' ]];do read -p "What is your Name:" nm;done        # Keep asking for a name if the name is empty == ''
       if [[ $nm == "prev" ]];then nm=""; else echo "Hello $nm" && break; fi  # break command breaks the while wrapper loop 
       ;;
    2) echo 'Load' ;;
    3) echo 'exiting...' ;;                                          # Number 3 causes while to quit.
    *) echo "invalid selection - try again";;                        # Selection out of 1-2-3 , menu reloaded
esac                                                                 # case closing 
done                                                                 # while closing
echo "Bye Bye!"


