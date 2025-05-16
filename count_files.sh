#!/bin/bash

# Demander le nom du dossier à l'utilisateur
echo "Entrez le nom du dossier :"
read dossier

# Vérifie si le dossier existe
if [ -d "$dossier" ]; then
    # Utilise ls pour lister les éléments visibles, puis trouve ceux qui sont des fichiers
    nb_fichiers=$(ls "$dossier" | while read item; do
        if [ -f "$dossier/$item" ]; then
            echo "$item"
        fi
    done | wc -l)
    # Affiche le nombre de fichier  
    echo "Le dossier $dossier contient $nb_fichiers fichier(s)."
else
    echo "Le dossier $dossier n'existe pas."
fi 