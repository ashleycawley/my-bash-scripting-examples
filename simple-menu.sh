#!/bin/bash

PS3="Select the item number: "

select event in Hello World Exit
do
	case "$event" in
	Hello)	echo Hello ;;
	World)	echo World ;;
	Exit)	exit 0 ;;
	* )	echo "Invalid Selection";;
esac
done
