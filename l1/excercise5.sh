#!/bin/bash

# Implement script in bash that in all regular files in directory changes character 'a' to 'A'

sed -i 's/a/A/g' $(find $1 -type f)
