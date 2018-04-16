#!/bin/bash

# Description: This script demonstrates arguements and accepting them from the user
# as input when the script is first invoked like: ./echo-name.sh Ashley Cawley

# When arguments are supplied to a script at the start they are represented as
# $1 or $2 or $3, so on, for however many have been supplied.
# ./script.sh example # "example" would be $1
# The name of the script itself can be invoked with the use of $0

echo "The name of the script is $0"

echo "Argument #1 = $1"

echo "Argument #2 = $2"

echo "Your name is $1 $2"

	exit 0
