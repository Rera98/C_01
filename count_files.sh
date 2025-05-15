#!/bin/bash

# Demander à l'utilisateur de saisir un nom de dossier
echo "Veuillez entrer le nom d'un dossier :"
read dossier

# Vérifier que le dossier existe
if [ ! -d "$dossier" ]; then
    echo "Erreur : le dossier '$dossier' n'existe pas."
    exit 1
fi

# Utiliser ls et wc -l pour compter les fichiers (non récursif)
# On filtre avec 'ls -p' qui ajoute un '/' aux dossiers
# Puis on enlève les lignes qui se terminent par '/' (donc les dossiers)
nb_fichiers=$(ls -p "$dossier" | grep -v '/$' | wc -l)

# Afficher le résultat
echo "Le dossier $dossier contient $nb_fichiers fichier(s)."