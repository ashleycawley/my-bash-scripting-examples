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

# Functions

function MD5_COMPARISON {
    echo "Script's current md5: $MY_MD5"
    echo "Script's online md5 : $ONLINE_MD5"
}

# Script

MD5_COMPARISON

if [ $MY_MD5 != $ONLINE_MD5 ]
then
    echo "Local & Remote versions are NOT equal. Downloading newer version..." && echo
    wget -q -O $FULLSCRIPTPATH $UPDATE_SOURCE
    chmod +x $FULLSCRIPTPATH
    
    echo "Performing another md5sum check local vs remote..."
    MY_MD5=(`md5sum $FULLSCRIPTPATH`) # Scripts current md5sum hash
    ONLINE_MD5=(`wget -q -O /tmp/testing.md5 $UPDATE_SOURCE; md5sum /tmp/testing.md5 | awk '{print $1}'; rm -f /tmp/testing.md5`) # DL's script from source, checks md5sum and then deletes temp file

    MD5_COMPARISON
else
    echo "Local program is already up to date with the remote repository."
fi