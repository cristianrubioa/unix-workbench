#!/bin/bash
# File: condexif.sh


# If and Else (condexec + condexpre)


<< comment
    *También debe saber que puede combinar ejecución condicional, expresiones condicionales y sentencias if/elif/else. 
        Los operadores de ejecución condicional AND (&&) y OR (||) se pueden utilizar en una instrucción "if" o "elif".
comment


if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
  echo "$1 is between 3 and 7"
elif [[ $1 =~ "Jeff" ]] || [[ $1 =~ "Roger" ]] || [[ $1 =~ "Brian" ]]
then
  echo "$1 works in the Data Science Lab"
else
  echo "You entered: $1, not what I was looking for."
fi

#bash condexif.sh 2
#bash condexif.sh 4
#bash condexif.sh 6
#bash condexif.sh Jeff
#bash condexif.sh Brian
#bash condexif.sh Sean

## You entered: 2, not what I was looking for.
## 4 is between 3 and 7
## 6 is between 3 and 7
## Jeff works in the Data Science Lab
## Brian works in the Data Science Lab
## You entered: Sean, not what I was looking for.

