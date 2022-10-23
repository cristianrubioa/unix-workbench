#!/bin/bash
# File: arrays.sh


# Arrays


<< comment
    * Las matrices en Bash son listas ordenadas de valores.
    * (2) Las listas se crean con paréntesis () con un espacio que separa cada elemento de la lista.
    * (3) Para recuperar la matriz, debe usar la expansión de parámetros, que involucra el signo de dólar ($) y los corchetes ({}).
    * (4) Para obtener todos los elementos, use una estrella (*) entre corchetes:
    * (5) También puede cambiar elementos individuales en la matriz especificando su índice entre corchetes.
    * (6) Para obtener solo una parte de una matriz, debe especificar el índice en el que le gustaría comenzar, 
        seguido de la cantidad de elementos que desea recuperar de la matriz, separados por dos puntos.
        - La consulta anterior esencialmente dice: obtenga 3 elementos de matriz a partir del sexto elemento de la matriz.
    * (7) Puede encontrar la longitud de una matriz usando el signo de libra (#).
    * (8) Puede usar el operador más-igual (+=) para agregar una matriz al final de una matriz de matriz.
comment


# * (2)
plagues=(blood frogs lice flies sickness boils hail locusts darkness death)


# * (3)
echo ${plagues[0]}
## blood


# * (4)
echo ${plagues[*]}
## blood frogs lice flies sickness boils hail locusts darkness death


# * (5)
echo ${plagues[*]}
plagues[4]=disease
echo ${plagues[*]}
## blood frogs lice flies sickness boils hail locusts darkness death
## blood frogs lice flies disease boils hail locusts darkness death


# * (6)
echo ${plagues[*]:5:3}
## boils hail locusts


# * (7)
echo ${#plagues[*]}
## 10


# * (8)
dwarfs=(grumpy sleepy sneezy doc)
echo ${dwarfs[*]}
dwarfs+=(bashful dopey happy)
echo ${dwarfs[*]}
## grumpy sleepy sneezy doc
## grumpy sleepy sneezy doc bashful dopey happy