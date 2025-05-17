#!/bin/bash

# Demande le nom du dossier à l'utilisateur
echo "Entrez le nom du dossier :"
read filename

# Vérifie si le dossier existe

if [ -d "$filename" ]; then 
    nb_fichiers=$(ls -p "$filename"| wc -l|xargs)

    echo "Le dossier $filename contient $nb_fichiers fichier(s)."
else
    echo "Le dossier $filename n'existe pas."
fi 