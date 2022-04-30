#!/bin/bash

# Provides a dmenu for power options

function powermenu {
    options="Cancel\nShutdown\nRestart\nSleep\nLock\nLogout"
    selected=$(echo -e $options | dmenu)
    if [[ $selected = "Lock" ]]; then
        slock
    elif [[ $selected = "Restart" ]]; then
        reboot
    elif [[ $selected = "Sleep" ]]; then
        systemctl suspend
    elif [[ $selected = "Shutdown" ]]; then
        poweroff
    elif [[ $selected = "Logout" ]]; then
        loginctl terminate-user ebark
    elif [[ $selected = "Cancel" ]]; then
        return
    fi
}

powermenu
