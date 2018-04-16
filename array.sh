#! /bin/bash
#
# An example of an array, note that it starts counting at 0
# In the example below 0=dog 1=cat 2=mouse etc.
VAR1=(dog cat mouse fox horse)

	echo ${VAR1[0]} # Will display dog
	echo ${VAR1[1]} # Will display cat
	echo ${VAR1[2]} # Will display mouse
	echo ${VAR1[3]} # Will display fox
	echo ${VAR1[4]} # Will display horse

echo ""

# To displays all items within the array you can use:
echo ${VAR1[*]}

# If you wanted to change just one of the values in an array
# you could use the following:
VAR1[1]=sheep # Changes value 1 which was cat to sheep

echo ${VAR1[1]} # Will now display sheep instead of cat
