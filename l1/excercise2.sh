#!/bin/bash

cat $(find $1 -type f)|tr ' ' '\n'|sort|uniq -c
