#!/bin/bash

# Notes: the use of the -e switch in the test below checks to see if
# the file exists and that is it. If you use the -f switch instead
# it checks to see if it exists and if it is a "regular" file.
# -s can be used to see if a file is empty or not.

if

	[ -e file.txt ]

then

	echo "The file exists!"
	
	exit 0

fi

	echo "The file does not exists.
	
	
	exit 1
