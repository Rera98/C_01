#!/bin/bash

# Affecter les arguments à des variables
a=$1
b=$2
op=$3
read a b op
# Effectuer l'opération en fonction de l'opérateur
if [ "$op" = "+" ]; then
    result=$((a + b))
elif [ "$op" = "-" ]; then
    result=$((a - b))
elif [ "$op" = "*" ]; then
    result=$((a * b))
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro."
        exit 1
    fi
    result=$((a / b))
else
    echo "Erreur : opérateur invalide. Utilisez +, -, * ou /"
    exit 1
fi

# Affiche le résultat
echo "Résultat : $result"
