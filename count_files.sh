#!/bin/bash 
# Demande le nom du dossier à l'utilisateur 
 
# Vérifie si le dossier existe

if [ -d "$dossier" ]; then
    nb_fichiers=$(ls "$dossier" | wc -l | xargs)

    echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
else
    echo "Le dossier $dossier n'existe pas."
fi 