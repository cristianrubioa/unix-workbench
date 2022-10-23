#!/bin/bash
# File: braces.sh


# Braces


<< comment
    * Bash tiene una herramienta muy útil para crear cadenas a partir de secuencias llamada expansión de llaves.
    * (2) La expansión de llaves usa llaves y dos puntos ({ .. }) para crear una secuencia de letras o números. 
    * (3) Además de números también puedes crear secuencias de letras.
    * (4) Puede poner cadenas a ambos lados de los corchetes y se "pegarán" en el extremo correspondiente de la secuencia.
    * (5) También puede combinar secuencias para que dos o más secuencias se peguen juntas.
    * (6) Si desea usar variables para definir una secuencia, debe usar el comando eval para crear la secuencia.
    * (7) Puede combinar secuencias con una coma entre corchetes ({,}).
    * (8) De hecho, puedes hacer esto con cualquier número de cadenas.
comment


# * (2)
echo {0..9}
## 0 1 2 3 4 5 6 7 8 9


# * (3)
echo {a..e}
echo {W..Z}
## a b c d e
## W X Y Z


# * (4)
echo a{0..4}
echo b{0..4}c
## a0 a1 a2 a3 a4
## b0c b1c b2c b3c b4c


# * (5)
echo {1..3}{A..C}
## 1A 1B 1C 2A 2B 2C 3A 3B 3C


# * (6)
start=4
end=9
echo {$start..$end}
eval echo {$start..$end}
## {4..9}
## 4 5 6 7 8 9


# * (7)
echo {{1..3},{a..c}}
## 1 2 3 a b c


# * (8)
echo {Who,What,Why,When,How}?
## Who? What? Why? When? How?