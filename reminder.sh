#!/bin/bash

echo "Reminder is active & running..."

#Cleanup function
cleanup() {
    if [ -n "$music_pid" ]; then
        kill "$music_pid" 2>/dev/null
    fi
    if [ -n "$zenity_pid" ]; then
        kill "$zenity_pid" 2>/dev/null
    fi
    echo -e "\nExiting..."
    sleep 1
    echo -e "\nReminder ended."
    exit 0
}

#Function to handle the SIGINT signal (Ctrl+C)
trap cleanup SIGINT

#This is a reminder for 5 seconds
sleep 5

#Function to play the music continuously
play_music() {
    while true; do
        #Add your music file path here (less than 10 seconds recommended)
        paplay /home/user/Music/alarm-clock-elapsed.oga
    done
}

#Play the music
play_music &
music_pid=$!

#Using zenity to create a dialog box
zenity --info --text="Check if the Nmap scan has finished." --title="Reminder" --width=300 --height=200 2>/dev/null &
zenity_pid=$!

#Wait for the zenity process to finish
wait $zenity_pid

cleanup
