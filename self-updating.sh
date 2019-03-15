#!/bin/bash

# Variables

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# Storing the full path and filename in a variable:
FULLSCRIPTPATH="`pwd`/$SCRIPTNAME"

UPDATE_SOURCE=""

# URL to check to see if update should proceed
2FA="http://status.ashleycawley.co.uk/update-2fa.txt"

# Scripts current md5sum hash
MY_MD5=(`md5sum $FULLSCRIPTPATH`)

# Script

echo "Script's current md5: $MY_MD5

"

echo "Scripts online md5 at $UPDATE_URL"
