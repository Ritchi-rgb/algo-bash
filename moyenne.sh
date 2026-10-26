#!/bin/bash

# notes est une liste de chiffre
# Chaque chiffre a l'interieur a un index
# par exemple :
# index 0 -> 12
# index 1 -> 8
# index 2 -> 15
# index 3 -> 10
# index 4 -> 17
notes=(12 8 15 10 17 24 31 36 65)

echo "derniere note : ${notes[4]}"

echo "Toutes les notes : ${notes[*]}"

echo "Nombre d'élément du tableau : ${#notes[@]}"
nb=${#notes[@]}

somme=0
for n in "${notes[@]}";do
    # idem que la ligne suivante (( somme = somme + n ))
    (( somme += n ))
done

echo "Somme : $somme"

echo "Le nombre de notes : ${#notes[@]}"
echo "La moyenne des notes : " $(( somme/nb ))

