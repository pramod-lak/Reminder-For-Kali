#!/bin/bash

#Function to send a notification
send_notification() {
    notify-send "Test notification!" "Just testing, click to dismiss." -t 0
}

#Calling the function
send_notification
