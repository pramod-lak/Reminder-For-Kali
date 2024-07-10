### NAME
Reminder for Kali

### ABOUT
This is a reminder program for Kali Linux that can be easily run from the terminal. It helps you stay aware of time during scans and other tasks.

### DESCRIPTION
Reminder for Kali is designed to be simple and easy to use through a terminal tab. It helps you manage your time by setting reminders, allowing you to focus on other tasks without worrying about missing important intervals. For example, you can start a scan, set a reminder for 5 minutes, and then focus on other work until the reminder alerts you. You can open a separate tab in your terminal menu to run the reminder. While it's running, you can do all your other work in other tabs. You can also run two or more reminders simultaneously in separate tabs.

### HOW TO USE
Follow these steps to use the Reminder for Kali.

1. **Install Zenity (if not already installed):**
    - Zenity is required to run this reminder program. It is approximately 188kB in size.
      ```bash
      sudo apt-get install zenity
      ```
    - Zenity is a tool in Linux that creates graphical dialog boxes for user interaction in shell scripts.

2. **Clone the Repository:**
   - Clone this repository to download the reminder program files.
     ```bash
     cd ~/Downloads
     git clone https://github.com/pramod-lak/Reminder-For-Kali
     cd Reminder-For-Kali
     ```

4. **Edit the Sound File Path:**
    - Open the script using `nano` and edit the path to your sound file.
      ```bash
      nano reminder.sh
      ```
    - It is recommended to add a sound file with a duration of **10 seconds or less**.
    - Find the line with `paplay /home/user/Music/alarm-clock-elapsed.oga` and replace it with the path to your sound file.

5. **Run the Reminder:**
    - Make the script executable by running the following command.
      ```bash
      chmod +x reminder.sh
      ```
    - Execute the reminder script in the terminal with the desired delay and message.
      ```bash
      ./reminder.sh -t <delay> -m <message>
      ```
    - **-t <delay>:** Set the delay in the format `HH:MM:SS`
    - **-m <message>:** Set the reminder message

6. **Examples:**
    - This will set a reminder for 5 minutes with the message "Check the Nmap scan results".
      ```bash
      ./reminder.sh -t 00:05:00 -m "Check the Nmap scan results"
      ```

### AUTHOR
Pramod Lakshan https://github.com/pramod-lak/Reminder-For-Kali/
