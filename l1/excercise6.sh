#!/bin/bash

#przechodzac po wszystkich plikach

find $1 -type f | while read -r myfile;
do
    while IFS=: read -r myline;
	do
		for myword in $(echo $myline|tr ' ' '\n'|sort|uniq -c|awk '$1>=2{print $2}'|tr '\n' ' ')
		do	
			echo "Word = $myword"
			echo "In line = $myline"
			echo "In file = $myfile"
		done #<$myline|tr ' ' '\n'|sort|uniq -c|awk '$1>=2{print $2}'		  
	done <$myfile
done

#który drukuje słowa występujące więcej niż raz w jakimś wierszu, wraz z tymi wierszami i nazwami plików, z których te wiersze pochodzą.
#https://stackoverflow.com/questions/26290113/check-if-word-occurs-more-than-once-in-a-text-document

