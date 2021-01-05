#!/bin/bash

# Implement script in bash that given svn repository addres and revision number for all regular files prints number of occurrences each word in all files

files=`svn list -R -r $1 $2|grep '[^\/]$'`

for file in $files; do
        svn cat -r $1 $2$file|tr ' ' '\n'
done |sort|uniq -c
