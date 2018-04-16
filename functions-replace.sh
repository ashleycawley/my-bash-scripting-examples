#!/bin/bash

# Variables
TEMP=/tmp

# Lines 4-6 below declare a new function named 'iph'
function ip {
hostname -I | awk '/192/ {print $1;}'
}

# The actual script begins...
echo
echo "Welcome to my script..."
echo && sleep 2
# ip # To use the function you just type its name like this.

echo "Making replacement using a function..."


sed -i s/LOCALIP/`ip`/g $TEMP/index.html


exit 0
