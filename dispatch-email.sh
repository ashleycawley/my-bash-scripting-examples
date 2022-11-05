#!/bin/bash

# If you receive an error saying "mail" is not installed when trying to use this then you may need to install:
# yum install mailx
# apt-get install mailx
# ^^ That used to work on older systems, but now newer Raspbian systems might require a combo of these instead:
# bsd-mailx postfix

# Emails the contents of file.txt to the email address shown
cat file.txt | mail -s "Subject" email@address.com
