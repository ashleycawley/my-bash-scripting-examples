#!/bin/bash

# Notes

# Variables

# This stores script-name.sh inside the variable $SCRIPTNAME
SCRIPTNAME=`basename "$0"`

# Storing the full path and filename in a variable:
FULLSCRIPTPATH="`pwd`/$SCRIPTNAME"

# Functions

# Header
echo \
"###########################################
Script: $FULLSCRIPTPATH
Bash Version: $BASH_VERSION
Author: Ashley Cawley // @ashleycawley
############################################"

# Main Script

# Checks if the user supplied an arguement and if not it advises them on usage
if [ "$#" -ne 1 ]
then
	echo "Error: Invalid Usage. Try again but this time specify a domain name:"
	echo -e "Usage: [~]# migrate cloudabove.com"
	exit 1
fi

# Prints Help information - Checks the first arguement $1 is not empty AND contains --help or -help
if [ ! -z "$1" ] && [ `echo $1` == '--help' ] || [ `echo $1` == '-help' ]
then
        echo "
        ### $SCRIPTNAME - Help ###
        ---------------------------

        ## Usage
        [user@server]# migrate domain.co.uk

        -----------------------------------------------------------------------------------------------------------
        ## Title
        More details notes

        - Bullet 1.
        - Bullet 2.

        ------------------------------------------------------------------------------------------------------------
        ## Additional Support
        If you are still unsure or something is not behaving as it should then please feel free
        to reach out to the author: Ashley Cawley // @ashleycawley // ash@ashleycawley.co.uk

        "
        exit 0

fi