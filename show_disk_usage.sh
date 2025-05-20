#!/bin/bash

# Si un répertoire est donné en argument, on affiche son utilisation
# Sinon, on affiche l'utilisation globale du disque

if [ $# -eq 0 ]; then
    echo "Aucune cible précisée, affichage de l'utilisation du disque global :"

    df -h
else
    dossier="$1"

    # Vérifie si le dossier existe
    if [ -d "$dossier" ]; then
        echo "Utilisation du disque pour le dossier : $dossier"
    
        du -sh "$dossier"
    else
        echo "Erreur : le dossier '$dossier' n'existe pas."
        exit 1
    fi
fi