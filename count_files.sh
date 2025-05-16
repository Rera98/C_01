#!/bin/bash

# Demander le nom du dossier à l'utilisateur
echo "Entrez le nom du dossier :"
read dossier

# Vérifie si le dossier existe

if [ -d "$dossier" ]; then 
    nb_fichiers=$(find "$dossier" -maxdepth 1 -type f | wc -l | xargs)
    echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
else
    echo "Le dossier $dossier n'existe pas."
fi 