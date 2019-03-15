#!/bin/bash

# Variables

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# Storing the full path and filename in a variable:
FULLSCRIPTPATH="`pwd`/$SCRIPTNAME"

UPDATE_SOURCE="https://raw.githubusercontent.com/ashleycawley/my-bash-scripting-examples/master/self-updating.sh"

# URL to check to see if update should proceed
TWOFA="http://status.ashleycawley.co.uk/update-2fa.txt"

# Scripts current md5sum hash
MY_MD5=(`md5sum $FULLSCRIPTPATH`)

# Downloads script from source URL, extracts md5sum and then deletes the temporary file
ONLINE_MD5=(`wget -q -O /tmp/testing.md5 $UPDATE_SOURCE; md5sum /tmp/testing.md5 | awk '{print $1}'; rm -f /tmp/testing.md5`)

# Script
echo "Script's current md5: $MY_MD5"
echo "Script's online md5 : $ONLINE_MD5"

echo && echo "Comparison check:" && echo

if [ $MY_MD5 != $ONLINE_MD5 ]
then
    echo "MD5's are NOT equal!"
else
    echo "MD5's are equal :-)"
fi