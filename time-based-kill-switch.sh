#!/bin/bash

## Time Based Kill Switch

# This script is useful if you want to stop a script from executing after a certain date or time.
#
# This system uses the UNIX Timestamp which is the number of seconds that have past since Jan 01 1970.
# On a Linux system you can use the command: date +%s to see the current UNIX timestamp
# You can use websites like: https://www.unixtimestamp.com/ to obtain UNIX timestamps for specific
# dates and times in the future, once you have that timestamp you can modify the if statement below.

# Time based kill switch
if [ `date +%s` -gt "1581653918" ]
    then
        echo "Date has passed - Exiting with status code 1"
        exit 1
fi

echo "Executing commands! ..."

ping -c 2 bbc.co.uk

exit 0