#!/bin/bash

echo "$@"

i=1
set -- "$@"  # Réinitialise les arguments positionnels (pas obligatoire ici, mais bon à connaître)

# Lecture manuelle sans boucle visible
next() {
    [ "$1" ] && echo "Argument $i: $1" && shift && ((i++)) && next "$@"
}

next "$@"
