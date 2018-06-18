#!/bin/bash

# A list of 'Escape Sequences' that I will find useful.

# When using escape sequences with echo you have to use echo -e so that the backslash can be interpreted.

# \f - Formfeed - This has the benifit of clearing the screen, which could be used at the start of a script
# in order to give the user a clean slate, the downside is that the output of the scrip appears to show
# above the command prompt and not below it as normal.
echo -e '\f'


# \c surpresses the new line character that would happen naturally, so in this example below although it
# is split across numbers lines and commands the resulting output would be: " hello world " on one line.
echo -e 'hello \c'
echo 'world'
