#!/bin/bash

# Checks the first arguement $1 is not empty AND contains --help or -help
if [ ! -z "$1" ] && [ `echo $1` == '--help' ] || [ `echo $1` == '-help' ]
then
	echo "
	### Manual / Help ###
	
	## Usage:
	[`whoami`@`hostname`]# migrate domain.co.uk
	"
	exit 0
fi
