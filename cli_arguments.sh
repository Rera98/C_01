#!/bin/bash 
#echo "$@"
read -a arg 
#echo "$@" 
# Affiche chaque argument individuellement
i=1
 for arg in "${arg[@]}"; do
   echo "Argument $i: $arg"
   shift
   ((i++))
done