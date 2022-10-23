#!/bin/bash
# File: math.sh


# Math


<< comment
    * (1) expr: se utiliza para evaluar expresiones.
    * (2) La multiplicación necesita escapar el caracter "*".
    * (3) Bash realiza divisiones de enteros (se redondea al entero más cercano).
    * (4) El operador de módulo (%) devuelve el resto después de la división entera.
        Tenga en cuenta que cuando un número es completamente divisible por otro número, 
        el resultado del módulo es cero.
comment


# * (1)
expr 5 + 2
expr 5 - 2
## 0
## 3

# * (2)
expr 5 \* 2 
## 1


# * (3)
expr 5 / 2
## 2


# * (4)
expr 1 % 3
expr 10 % 3
expr 40 % 21
expr 40 % 20
## 1
## 1
## 19
## 0




