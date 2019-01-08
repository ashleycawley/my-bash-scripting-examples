#!/bin/bash

SITE='bbcdh83jim.co.uk'

until [ `ping -c 2 $SITE` ]
do
	echo "Changing SITE variable to be bbc.co.uk"
	SITE='bbc.co.uk'
done
