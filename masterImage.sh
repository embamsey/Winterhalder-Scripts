#! /bin/bash

# This script should be run from in the image folders in the KeithWinterhalder folder (on the dev server)

# Replace all the thumbnail images with the master images in the winterhalder_import folder

# Set up a variable to keep track of the image numbers
# This starting variable will change depending on the folder range the script is being run in
itemNum=1;
# Loop over the images and copy them into the correct item folder
for images in ./*.jpg; do
	# Copy the master image into the item folder
	cp $images /home/ebamsey/WinterhalderCollection/winterhalder_import/item$itemNum/
	# Remove the thumbnail image from the folder
	rm /home/ebamsey/WinterhalderCollection/winterhalder_import/item$itemNum/*t.jpg
	# Increase itemNum
	((itemNum++));
done
