#!/bin/bash

options="Shutdown\nReboot\nSuspend\nLogout"

chosen=$(echo -e "$options" | tofi --prompt-text "Power Menu: ")

case "$chosen" in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Suspend)
        systemctl suspend
        ;;
    Logout)
        swaymsg exit
        ;;
    *)
        ;;
esac
