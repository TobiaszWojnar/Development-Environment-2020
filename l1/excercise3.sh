#!/bin/bash

find $1 -type f | while read -r myfile; do
    cat $myfile|tr ' ' '\n'|sort|uniq;
done|sort|uniq -c

#liczy tez jeden znak bialy
