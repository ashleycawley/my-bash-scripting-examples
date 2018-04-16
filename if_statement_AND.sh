#!/bin/bash

# The -e test below checks that something exists.
if [ -e "/etc/passwd" ] && [ `whoami` = "pi" ]
	then
echo "Success!"
fi
