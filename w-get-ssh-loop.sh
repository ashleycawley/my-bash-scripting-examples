#!/bin/bash
#
COUNTER=1
#
while [ $COUNTER -le 100 ]
do
	date && echo ""
	w | grep ssh | grep -v ashcaw >> w-ssh-log.txt
	echo "sleeping for 2..." && sleep 2
	((COUNTER++))
done
	echo "All Finished."
exit 0
