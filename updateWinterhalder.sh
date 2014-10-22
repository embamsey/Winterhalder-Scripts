#! /bin/bash

# This script should be run in the same directory as the winterhalder_imports directory

# loop through each item and change the image file in the contents folder to be the master

for folders in ./winterhalder_imprts/*; do
	# Ensure we are only running the find and replace on the item folders
	if [ -d "$folders" ] ; then
		sed -i s/t.jpg/m.jpg/g $folders/contents
	fi
done 
