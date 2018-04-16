#!/bin/bash

read -p "What is your name?  " NAME # Take's input from the user and puts it into the $NAME variable

case $NAME in
	Ash) echo "Hey Ash" ;;
	Ashley) echo "Hey Ashley" ;;
	*) echo "You are not Ashley, go away!"
esac
