#!/bin/bash 
#echo "$@"
#read arg 
echo "$@" 
# Affiche chaque argument individuellement
i=1
 for arg in "$@"; do
   echo "Argument $i: $arg"
   shift
   ((i++))
done