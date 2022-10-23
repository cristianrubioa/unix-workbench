#!/bin/bash
# File: simpleif.sh


# If and Else (if)


<< comment
    * Las expresiones condicionales son poderosas porque puede usarlas para controlar cómo se ejecuta un programa.
    * El código escrito dentro de una declaración "if" solo se ejecuta si una determinada condición es verdadera; 
        de lo contrario, el código se omite.
    * (3) La expresión condicional tiene la siguiente sintaxis: 
        - Primero, este programa imprimirá "Programa de inicio", luego la instrucción "if" verificará si la expresión 
            condicional [[ $1 -eq 4 ]] es verdadera. Solo será cierto si proporciona 4 como primer argumento del script. 
        - Si la expresión condicional es verdadera, ejecutará el código entre entonces y fi; de lo contrario, se saltará ese código. 
        - Finalmente, el programa imprimirá "Finalizar programa".
comment


# * (3)
echo "Start program"

if [[ $1 -eq 4 ]]
then
  echo "You entered $1"
fi

echo "End program"

#bash simpleif.sh

## Start program
## End program


#bash simpleif.sh 77


## Start program
## End program


#bash simpleif.sh 4

## Start program
## You entered 4
## End program
