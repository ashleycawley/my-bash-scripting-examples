#!/bin/bash
#
# Puts script start time into $start variable
start=`date +%s`

# Script code
ping -c 5 bbc.co.uk

# Puts script end time into $end variable
end=`date +%s`

# Calculates time difference and puts number of seconds into $runtime variable
runtime=$((end-start))

# Displays the number of seconds that the script took to execute
echo "$runtime seconds"
