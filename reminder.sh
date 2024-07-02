#!/bin/bash

#Using zenity to create a dialog box
zenity --info --text="Check if the Nmap scan has finished." --title="Reminder" --width=300 --height=200

#Checking if the user clicked on OK
while true; do
    if [ $? -eq 0 ]; then
        break
    fi
done
