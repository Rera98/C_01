#!/bin/bash

# Affiche tous les arguments en une seule fois
echo "$@" 
# Traitement individuel avec \$1 et shift
i=1 
# Boucle sur les arguments et les affiches un a un
 [ "$#" -gt 0 ];
    echo "Argument $i: $1"
    shift
    ((i++))
[ "$#" -gt 0 ];
    echo "Argument $i: $1"
    shift
    ((i++))
