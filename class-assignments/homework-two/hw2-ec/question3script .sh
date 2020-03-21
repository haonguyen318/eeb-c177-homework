#!/bin/bash

#create a list containing all the IDs and store this list in a variable
#then run a loop to return the number of times each individual was samples
#call the script 

baboonsIDs=`tail -n +2 ~/Developer/repos/CSB/unix/data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`

for baboons in $baboonsIDs
do
  baboonscounts='bash number_individuals.sh ~/Developer/repos/CSB/unix/data/Gesquiere2011_data.csv | grep -c -w $baboons'
  echo "ID:" $baboons "counts:" $baboonscounts
done

