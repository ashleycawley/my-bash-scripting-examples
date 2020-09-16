#!/bin/bash
#
if
[ `whoami` == root ]
	then
echo "You are root."
exit 0
	else
echo "You are NOT root."
exit 1
	fi
