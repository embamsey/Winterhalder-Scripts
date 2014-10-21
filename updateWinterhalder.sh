#! /bin/bash

# loop through each item and change the file in the contents folder to be the master

for folders in ./*; do
	sed -i s/t.jpg/m.jpg/g $folders/contents
done 
