#!/bin/bash

#Primer Punto

wget https://raw.githubusercontent.com/daniel-lozano/CLASES_PYTHON/master/CLASE1/HERRAMIENTAS/notas.txt

awk '{ if($3>4) print $0;}' notas.txt > notas2.txt
awk '{ if($6>15) print $0;}' notas2.txt > RES1.txt

wc -l RES1.txt

#Segundo Punto

grep -w 0 notas.txt > Perdedores.txt

awk '{if($7<6) print $1, $2;}' Perdedores.txt > LaMayorPerdedora.txt



#Tercer Punto


awk '{if($7>8) print $0;}' notas.txt > RES2.txt


awk '{if($1=="") print $1, $2;}' RES2.txt
 

wc -l RES2.txt

#Cuarto Punto

mkdir RESULTADO
mv RES*.txt ./RESULTADO
mv LaMayorPerdedora.txt


