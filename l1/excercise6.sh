#!/bin/bash

# Implement script in bash that for each word occuring more than once in line in files in directory prints those words, lines where this word occurs, and the name of the file it comes from

find $1 -type f | while read -r myfile;
do
	while IFS=: read -r myline;
	do
		for myword in $(echo $myline|tr ' ' '\n'|sort|uniq -c|awk '$1>=2{print $2}'|tr '\n' ' ')
		do	
			echo "Word = $myword"
			echo "In line = $myline"
			echo "In file = $myfile"
		done	  
	done <$myfile
done

