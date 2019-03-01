#!/bin/bash

# Time based kill switch
if [ `date +%s` -gt "1551453824" ]
    then
        echo "Date has passed - Exiting with status code 1"
        exit 1
fi

echo "Executing commands! ..."

ping -c 2 bbc.co.uk

exit 0