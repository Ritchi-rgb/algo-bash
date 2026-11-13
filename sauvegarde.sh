#!/bin/bash
dossier=$1
for f in $(ls $dossier); do
   cp $dossier/$f /tmp/sauvegarde/
done
echo "Sauvegarde de $dossier terminée"