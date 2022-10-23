#!/bin/bash
# File: simpleelif.sh


# If and Else (elif)


<< comment
    * Entre las declaraciones "if" y "else", también puede tener declaraciones "elif". 
        Estas declaraciones actúan como declaraciones "if", excepto que solo se evalúan si las declaraciones
        "if" y "elif" anteriores tienen todas las expresiones condicionales falsas evaluadas. 
comment


if [[ $1 -eq 4 ]]
then
  echo "$1 is my favorite number"
elif [[ $1 -gt 3 ]]
then
  echo "$1 is a great number"
else
  echo "You entered: $1, not what I was looking for."
fi

#bash simpleelif.sh 4

## 4 is my favorite number


#bash simpleelif.sh 5

## 5 is a great number


#bash simpleelif.sh 2

## You entered: 2, not what I was looking for.

