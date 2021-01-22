#!/bin/bash
# Alcuni esempi di operazioni matematiche.
# Le espressioni vanno inserite tra doppie parentesi tonde
# Per assegnare il valore dell'espressione ad una variabile di usa il dollar sign "$"
a=1
echo 'Valore di $a: ' $a
val=$(($a + 3))
echo '(Addizione) $a+3='$val
val=$(($a - 3))
echo '(Sottrazione) $a-3='$val
val=$(($a * 3))
echo '(Moltiplicazione) $a*3='$val
val=$(($a / 3))
echo '(Divisione) $a/3='$val
val=$(echo $a / 3 | bc -l)
echo '(Divisione con bc)='$val
val=$(($a % 3))
echo '(Modulo) $a%3='$val
val=$(($a ** 3))
echo '(Potenza) $a**3='$val
