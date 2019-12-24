#!/bin/bash

# Trapping Interupt Signals

trap 'echo Signal Detected! - Cleaning up... ; rm -f log.txt; exit ' HUP INT TERM

# Main Script

touch log.txt # Creates a log file

echo "Hello" | tee -a log.txt # Echos Hello and saves it into log file

sleep 10 # Waits 10 seconds

echo "world" | tee -a log.txt # Echos world and saves it into log file

exit 0
