#/bin/bash

# This demonstrates how to check if one OR two file exists, it will
# Perform the task if EITHER of the two files exists.
# The || bit inbetween the two tests represents OR

if
	[ -e file1.txt ] || [ -e file2.dat ]
then
	echo "Either one or both of the files have been detected!"
exit 0

fi
	echo "Neither file has been detected."

exit 1
