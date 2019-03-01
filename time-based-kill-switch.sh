#!/bin/bash

if [ `date +%s` -gt "1551453824" ]
    then
        echo "Executing commands!"
fi

echo "Date has passed - Exiting..."
exit 0