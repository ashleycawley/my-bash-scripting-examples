#!/bin/bash

# Checking that required programs are installed (Setting Constants)
declare -r U_CMDS="rsync vim md5sum htop tree git"

# for loop goes round and checks whether each program is installed
for the_command in $U_CMDS
        do
                type -P $the_command >> /dev/null && : || {
        echo -e "$the_command command was not found, please install it." >&2
        exit 1
    }
done

echo "All programs are present and continuing with the script..."

exit 0
