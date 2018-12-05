#!/bin/bash

( if [ 1 == 1 ]
then
	echo "Hello"

	sleep 10

	echo "World"

fi ) &

# Note the if statement is encapsulated in brackets ( ) and then has a ampersand & after it
# which tells it to run the if statement as a background job / process
