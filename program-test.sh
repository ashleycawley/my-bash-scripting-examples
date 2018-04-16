#!/bin/bash

# Runs a test to see if whoami is installed
type whoami &>/dev/null # The latter part &>.. onward simply mutes the output of this line
if [ $? == 0 ]
	then

echo "All Programs Present :-)"

	else

echo "Programs Missing :-("

	fi
