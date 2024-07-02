#!/bin/bash

echo "Reminder is active & running..."

#Using zenity to create a dialog box
zenity --info --text="Check if the Nmap scan has finished." --title="Reminder" --width=300 --height=200 2>/dev/null

#Checking if the user clicked on OK
while true; do
    if [ $? -eq 0 ]; then
        break
    fi
done

echo -e "\nExiting..."
sleep 1
echo -e "\nReminder ended."
