#!/bin/bash

# This would display: ./script-name.sh
echo "$0"

# This would display: script-name.sh
basename "$0"

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# This example makes use of the variable set above
echo "The script name is $SCRIPTNAME"