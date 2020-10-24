#!/bin/bash

cat $(find $1 -type f)|tr ' ' '\n'|sort|uniq| while read -r myWord; do
	echo "The word $myWord";
	grep $myWord $(find $1 -type f);
done

#showing one space per file
