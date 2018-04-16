#! /bin/bash
#
# This is how you set a variable:
EMAIL=bob@example.com

# This is how you use a variable, note the $ before the name:
echo "Bob's email address is $EMAIL"

# If for some reason you ever had to un-set a variable:
unset EMAIL

# Because the variable has been unset the code below will display nothing
echo $EMAIL
