#!/bin/bash

# Implement script in bash that for each word in files in directory prints lines where this word occurs, preceded by the name of the file it comes from

cat $(find $1 -type f)|tr ' ' '\n'|sort|uniq| while read -r myWord
do
	echo "The word $myWord";
	grep $myWord $(find $1 -type f);
done
