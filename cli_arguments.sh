#!/bin/bash

# Initialiser un compteur
i=1
# Boucle sur tous les arguments
for arg in "$@"; do
    echo " Argument $i: $arg "
    shift             # Décale tous les arguments vers la gauche
    ((i++))    # Incrémente le compteur
done