#!/bin/bash
temperatures=(12 15 9 21 18 7 14)
lettres.shmax=${temperatures[0]}
min=${temperatures[0]}
jours=(lundi mardi mercredi jeudi vendredi samedi dimanche)

echo "Températures : ${temperatures[*]}"

echo "Nombre de jours : ${#temperatures[@]}"

for t in "${temperatures[@]}";do
	if (( t > max )); then
           max=$t
        fi
        if (( t < min )); then
           min=$t
        fi

ecart=$(( max - min ))

done

echo "Plus chaude : $max"
echo "Plus froide : $min"
echo "Écart : $ecart"
echo "La plus chaude : $max degrés, ${jours[3]}"
echo "bug"
