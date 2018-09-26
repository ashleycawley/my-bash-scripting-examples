#!/bin/bash

set -u

OPTION=$(whiptail --title "cloudabove Toolkit v0.1" --menu "Choose your option" 15 60 4 \
"1" "Migration Tool" \
"2" "catools.sh" \
"3" "Work in progress" \
"4" "Exit"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your chosen option:" $OPTION
else
    echo "You chose Cancel."
fi

case $OPTION in
    1) migrate ;;
    2) ./catools.sh ;;
    3) echo "Invalid option. Quitting";;
    4) echo "Invalid option. Quitting";;
    *) exit 0;;
esac
