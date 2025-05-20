#!/bin/bash 
echo "$@"

# Affiche chaque argument individuellement
i=1
[ "$1" ] && echo "Argument $i: $1"; shift; ((i++))
[ "$1" ] && echo "Argument $i: $1"; shift; ((i++))
[ "$1" ] && echo "Argument $i: $1"; shift; ((i++))
[ "$1" ] && echo "Argument $i: $1"; shift; ((i++))
[ "$1" ] && echo "Argument $i: $1"; shift; ((i++)) 
