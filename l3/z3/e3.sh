#!/bin/bash

# ImplImplement script in bash that given svn repository addres and revision number for each word in files in repository prints the number of files it occurred in

svn list -R -r $1 $2 | grep '[^\/]$'| while read -r myfile
do
    svn cat -r $1 $2$myfile|tr ' ' '\n'|sort|uniq;
done| sort | uniq -c

