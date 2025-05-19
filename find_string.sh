#!/bin/bash

# Demander le nom du fichier 
read fichier
 
# Demander la chaîne à rechercher

read chaine

# Utiliser grep pour chercher la chaîne dans le fichier
# -q : mode silencieux (ne rien afficher, mais retourne un code de sortie)
# -F : recherche de la chaîne telle quelle (pas une expression régulière)
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi