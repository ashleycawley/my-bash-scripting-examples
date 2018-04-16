#!/bin/bash

# Tests to see if three programs listed are installed, it lists to the user which are installed
# and which programs are not.

for p in date whoami yoyo; do 
    hash "$p" &>/dev/null && echo "$p is installed" ||
                 echo "WARNING: $p is not installed - Please install $p so that this script can function correctly."
done 