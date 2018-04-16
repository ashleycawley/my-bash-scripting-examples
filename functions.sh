#!/bin/bash

# Lines 4-6 below declare a new function named 'iph'
function ip {
echo "Your IP address is:"
hostname -I | awk '/192/ {print $1;}'
}

# The actual script begins...
echo
echo "Welcome to my script..."
echo && sleep 2
ip # To use the function you just type its name like this.
exit 0
