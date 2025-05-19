#!/bin/bash

# Affiche tous les arguments en une seule fois
for arg in "$@"; do
    echo -n "$arg "
done

# Traitement individuel avec \$1 et shift
i=1
# echo
while [ "$#" -gt 0 ]; do
    echo "Argument $i: $1"
    shift
    ((i++))
done