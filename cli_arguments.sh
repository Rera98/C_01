#!/bin/bash

# Affiche tous les arguments en une seule fois
echo "$@" 
# Traitement individuel avec \$1 et shift
i=1 
# Boucle sur les arguments et les affiches un a un
 for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done