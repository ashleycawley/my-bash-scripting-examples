#!/bin/bash

# This would display: ./script-name.sh
echo "$0"

# This would display: script-name.sh
basename "$0"

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# This example makes use of the variable set above
echo "The script name is $SCRIPTNAME"

# A way to display the full path to the script location and filename
echo "The script lives at: `pwd`/$SCRIPTNAME"

# Storing the full path and filename in a variable:
FULLSCRIPTPATH="`pwd`/$SCRIPTNAME"

# Using the variable above to display the full path and filename:
echo "Script path and name: $FULLSCRIPTPATH"