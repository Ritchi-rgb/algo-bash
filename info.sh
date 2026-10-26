#!/bin/bash
#modof no 1 test pour git

machine=$(hostname)
echo "$machine"
# bonne syntaxe aussi : la syntaxe suivane marche aussi echo "$(whoami)"
whoami
echo "Nous sommes le $(date +%F)"
echo "l'uptime est $(uptime)"
