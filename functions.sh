#!/bin/bash

# Lines 4-6 below declare a new function named 'ip'
function ip {
echo "Your IP address is:"
hostname -I | awk '/192/ {print $1;}'
}

# The actual script begins...
echo
echo "Welcome to my script..."
echo && sleep 2
ip # To use the function you just type its name like this.


sleep 2



echo "This will demo a 'fatal' error message and will demonstrate passing arguements to a function"


function fatal {
# Messages go to standard error
	echo "$0: fatal error:" "$@" >&2 
	exit 1
}


if [ $# == 0 ]
then
	fatal not enough arguements
	fatal should not see this
fi
