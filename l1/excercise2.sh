#!/bin/bash

# Implement script in bash that for all regular files in directory prints number of occurrences each word in all files

cat $(find $1 -type f)|tr ' ' '\n'|sort|uniq -c
