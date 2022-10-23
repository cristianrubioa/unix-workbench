#!/bin/bash
# File: condexpre.sh


# Conditional Expressions


<< comment
    * Las expresiones condicionales comparan dos valores o hacen una pregunta sobre un valor. 
    * Las expresiones condicionales siempre están entre corchetes dobles ([[ ]]), y usan indicadores lógicos u operadores lógicos.  
    * (3) Para probar rápidamente el valor lógico de una expresión condicional, podemos usar los operadores AND y OR 
        para que una expresión muestre "t" si es verdadera y "f" si es falsa.
    * Estas expresiones lógicas binarias comparan dos valores, pero también hay expresiones lógicas unarias que solo miran un valor.
        - (4.1) Por ejemplo, puede probar si un archivo existe o no usando el indicador lógico -e. 
    * (5) Las variables se comportan como valores brutos en expresiones lógicas.
        - 7 es mayor que 3 aunque no es mayor que 10, y no hay un archivo en este directorio llamado 7.
    * (6) Aquí hay varias otras variedades de banderas lógicas: ...
    * (7) También hay operadores lógicos. Uno de los más útiles es el operador de coincidencia de expresiones regulares (=~).
        El operador de coincidencia de expresiones regulares compara una cadena con una expresión regular y si la cadena coincide
        con la expresión regular, la expresión es equivalente a verdadero; de lo contrario, es equivalente a falso. 
    * (8) También existe el operador NOT (!), que invierte el valor de cualquier expresión condicional. 
        El operador NOT convierte expresiones verdaderas en expresiones falsas y viceversa. 
    * (9) Aquí hay una tabla de algunos de los operadores lógicos útiles: ...
comment


# * (3)
[[ 4 -gt 3 ]] && echo t || echo f
[[ 3 -gt 4 ]] && echo t || echo f
## t
## f


# * - (4.1)
[[ -e math.sh ]] && echo t || echo f
## t


# * (5)
number=7
[[ $number -gt 3 ]] && echo t || echo f
[[ $number -gt 10 ]] && echo t || echo f
[[ -e $number ]] && echo t || echo f
## t
## f
## f


# * (6)
<< comment
    Logical Flag             Meaning                     Usage
    * -gt                Greater Than                [[ $planets -gt 8 ]]
    * -ge            Greater Than or Equal To        [[ $votes -ge 270 ]]
    * -eq                     Equal                  [[ $fingers -eq 10 ]]
    * -ne                   Not Equal                [[ $pages -ne 0 ]]
    * -le              Less Than or Equal To         [[ $candles -le 9 ]]
    * -lt                   Less Than                [[ $wives -lt 2 ]]
    * -e                  A File Exists              [[ -e $taxes_2016 ]]
    * -d                A Directory Exists           [[ -d $photos ]]
    * -z            Length of String is Zero         [[ -z $name ]]
    * -n          Length of String is Non-Zero       [[ -n $name ]]
comment


# * (7)
[[ rhythms =~ [aeiou] ]] && echo t || echo f
my_name=sean
[[ $my_name =~ ^s.+n$ ]] && echo t || echo f
## f
## t


# * (8)
[[ 7 -gt 2 ]] && echo t || echo f
[[ ! 7 -gt 2 ]] && echo t || echo f
[[ 6 -ne 3 ]] && echo t || echo f
[[ ! 6 -ne 3 ]] && echo t || echo f
## t
## f
## t
## f


# * (9)
<< comment
    Logical Operator             Meaning                     Usage
    * =~                Matches Regular Expression       [[ $consonants =~ [aeiou] ]]
    * =                      String Equal To             [[ $password = "pegasus" ]]
    * !=                    String Not Equal To          [[ $fruit != "banana" ]]
    * !                            Not                   [[ ! "apple" =~ ^b ]]
comment
