#!/bin/bash

#This script allows you to input the file name in $1 and to input the ID of the indvidual in $2.
#cut the first column of the file ($1) then count the number of times the ID of the individual occurs ($2)

cut -f 1 $1 | grep -c -w $2
