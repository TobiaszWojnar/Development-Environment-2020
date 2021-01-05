#!/bin/bash

# Implement script in bash that given svn repository addres and revision number for all regular files prints number of occurrences each word in all files

svn list -R -r $1 $2 | grep '[^\/]$'|tr ' ' '\n'|sort|uniq -c
