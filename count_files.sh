#!/bin/bash 
# Demande le nom du dossier à l'utilisateur 
 read myfolder

 count=$(ls -1 "$myfolder" | wc -l)

 echo "Le dossier $myfolder contient $count fichier(s)."