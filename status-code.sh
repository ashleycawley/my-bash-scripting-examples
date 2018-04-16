#!/bin/bash

if [ -f "/etc/plasswd" ] # if starts the if-statement [ starts test ] closes
	then # if x then do this...
echo "SUCCESS!!!"
echo
echo "The file is there."

	exit 0 # Exits with the status code 0 which is success / OK

fi # closes the if statement.

	echo "I couldn't find the file :-("	
	exit 1 # Exits with the status code 1 usually to signify an error
