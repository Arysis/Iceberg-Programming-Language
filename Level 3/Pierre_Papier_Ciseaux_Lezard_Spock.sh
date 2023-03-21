#!/bin/bash

# Pierre Papier Ciseaux Lezard Spock

joueur1=$1
IA=$2

while [ $joueur1 != "pierre" ] && [ $joueur1 != "papier" ] && [ $joueur1 != "ciseaux" ] && [ $joueur1 != "lezard" ] && [ $joueur1 != "spock" ]
do
    echo "Choisissez entre pierre, papier, ciseaux, lezard ou spock"
    read joueur1
done