#!/bin/bash
# Emails the contents of file.txt to the email address shown
cat file.txt | mail -s "Subject" email@address.com
