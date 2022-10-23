#!/bin/bash
# File: simpleifelse.sh


# If and Else (else)


<< comment
    * Una sentencia "else" solo se ejecuta si la expresión condicional que evalúa la sentencia "if" es falsa.
comment


echo "Start program"

if [[ $1 -eq 4 ]]
then
  echo "Thanks for entering $1"
else
  echo "You entered: $1, not what I was looking for."
fi

echo "End program"

#bash simpleifelse.sh 4

## Start program
## Thanks for entering 4
## End program


#bash simpleifelse.sh 3

## Start program
## You entered: 3, not what I was looking for.
## End program
