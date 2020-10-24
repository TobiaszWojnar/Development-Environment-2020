#!/bin/bash

# Implement script in bash that for each word in files in directory prints the number of files it occurred in

find $1 -type f | while read -r myfile
do
    cat $myfile|tr ' ' '\n'|sort|uniq;
done | sort | uniq -c
