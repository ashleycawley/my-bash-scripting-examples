#!/bin/bash

# Notes: This is for getting your script to run commands in the background without the shell
# session waiting around for it.

# With this example below if you were to execute the script it would run in the background
# *however* you would still see output on the shell.
# This is significant because if you are triggering the command over SSH then the SSH connection
# will remain open for however long the background script is sending output, so it wont provide
# instant execution

( ping -c 15 cloudabove.com ) &

# To avoid a SSH session from being held open for the command output then redirect the output to /dev/null
# like this:

( ping -c 15 cloudabove.com &>/dev/null ) &

# Then the execution over SSH on a remote server will be instant

# Commands can be joined together to do a series of things or add a delay for example by using the following:

( sleep 60 ; ping -c 15 cloudabove.com &>/dev/null ) &
