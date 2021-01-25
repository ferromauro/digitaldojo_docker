#!/bin/bash
# Eseguiamo tante chiamate alla nostro server NGINX in base al numero inserito come parametro
# In assenza di parametri viene assunto il valore di default pari a 100
CALLS=100
x=0
if [ $1 -gt 0 ]; then
	  CALLS=$1
  else
	  CALLS=100
fi

while [ $x -lt $CALLS ]
do
	curl http://checkip.amazonaws.com >> result.txt
	x=$(($x+1))
done
