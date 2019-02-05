#!/bin/bash

# Checks if the user supplied an arguement and if not it advises them on usage
if [ "$#" -ne 1 ]
then
	echo "Error: Invalid Usage. Try again but this time specify a domain name:"
	echo -e "Usage: ${GREEN}migrate cloudabove.com${NC}"
	exit 1
fi

# Prints Help information - Checks the first arguement $1 is not empty AND contains --help or -help
if [ ! -z "$1" ] && [ `echo $1` == '--help' ] || [ `echo $1` == '-help' ]
then
        echo "
        ### Migrate Tool - Help ###
        ---------------------------

        ## Usage
        [`whoami`@`hostname`]# migrate domain.co.uk

        -----------------------------------------------------------------------------------------------------------
        ## Configuration Files
        Configuration files are generated and saved for each website migration, these typically have the filename:
        domain.co.uk.conf (the domain you are transferring + .conf)

        Configuration files contain information about the transfer which can be used by the migrate tool at a later
        date in order to speed up re-runs, it prevents the program from asking you the same questions.

        Configuration files do contain some information, but it does not store highly sensative information like
        passwords. An example of what it does store would be:

        - Domain Name of the website being moved.
        - Date and time of the migration script being run.
        - Remote / Source Server IP or Hostname.
        - Username on the Remote / Source Server.
        - Username on the Local Server.

        ------------------------------------------------------------------------------------------------------------
        ## Additional Support
        If you are still unsure or something is not behaving as it should then please feel free
        to reach out to the author: Ashley Cawley // @ashleycawley // acawley@cloudabove.com

        "
        exit 0

fi