#!/bin/bash

echo "Reminder is active & running..."

#Using zenity to create a dialog box
zenity --info --text="Check if the Nmap scan has finished." --title="Reminder" --width=300 --height=200 2>/dev/null &
zenity_pid=$!

#Wait for the zenity process to finish
wait $zenity_pid

echo -e "\nExiting..."
sleep 1
echo -e "\nReminder ended."
