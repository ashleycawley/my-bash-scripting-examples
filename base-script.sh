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