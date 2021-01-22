#!/bin/bash
# Facciamo alcuni esempi lavorando con le variabili.
# I nomi delle variabili devono iniziare con una lettera.
# I nomi possono contenere lettere e numeri.
# Le stringe devono essere comprese tra double quotes.
# Per utilizzare una variabilie dobbimao usare il carattere dollar sign '$'
a=Hello
b='Hello world'
c=10
echo $a
echo $b
echo $c
# Utilizzo di declare per assegnare degli attributi
declare -u d=CIao
declare -l e=CIao
echo $d
echo $e
