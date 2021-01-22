#!/bin/bash
# Script per mostrare la diversa sintassi della logica booleana per stringhe e numeri.
a="Ciao"
b="Mondo"
c=30
d=100
# Stringhe
echo "Ciao == Mondo:"
[[ $a == $b ]]
echo $?
echo "Ciao != Mondo:"
[[ $a != $b ]]
echo $?
echo "30 < 100:"
[[ $c < $d ]]
echo $?
echo "30 -lt 100:"
[[ $c -lt $d ]]
echo $?


