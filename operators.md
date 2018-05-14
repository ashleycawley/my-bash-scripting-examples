### This file is not a shell script that is meant to be executed, instead it is to be used as a reference guide.

# OR
command1 || command2
This will run command1 if command1 succeeds (exit code 0) then it stops there and does NOT run command2.
If command1 fails (exit code 1) it will move on to command 2 instead.
This can be used with some interesting logic to replace a basic IF statement, see..
Example:
ping -c 3 google.com || echo "Your connection may be down."
This will ping Google, if it responds and everything is OK then it is left as that, however if there is no
response then the ping tool will exit with an exit code of 1 or higher and then it will echo the message.

# AND
command1 && command2
This runs commands sequentially one after the other, for example running: date && whoami
Would show you the current date and your username.

