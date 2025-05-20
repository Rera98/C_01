#!/bin/bash

# Affiche tous les arguments en une seule fois
#echo "$@" 
# Traitement individuel avec \$1 et shift
#i=1 
# Boucle sur les arguments et les affiches un a un
 #while [ "$1" ]; do
    #echo "Argument $i: $1"
    #shift
    #((i++))
#done
echo "$@"

#i=1

echo "Argument 1: $1"; shift #&& ((i++))
echo "Argument 2: $1"; shift #&& ((i++))
#[ "$1" ] && echo "Argument $i: $1" && shift && ((i++))