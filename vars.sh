#!/bin/bash
# File: vars.sh


# Variables


<< comment
    * Asegúrese de seguir estas reglas cuando esté nombrando variables:
        - Todos los caracteres deben estar en minúsculas.
        - El nombre de la variable debe comenzar con una letra.
        - El nombre solo debe contener caracteres alfanuméricos y guiones bajos (_).
        - Las palabras del nombre deben estar separadas por guiones bajos.
    * Si sigue esas reglas, puede evitar sobrescribir los datos almacenados en las variables ambientales.
    * (3) Puede asignar datos a una variable usando el signo igual (=). 
    * Los datos que almacena en una variable pueden ser una cadena o un número. 
    * (5) Tenga en cuenta que no hay espacios a ambos lados del signo igual, esto no está permitido cuando se asignan variables.
    * (6) Cuando desee recuperar el valor de una variable, debe usar el signo de dólar ($) antes del nombre de la variable.
    * (7) Puede modificar el valor de una variable usando operadores aritméticos usando el comando "let".
    * (8) También puede almacenar cadenas en variables.
    * (9) Para ejecutar un comando como lo haría en la línea de (comando y almacenar el resultado de ese comando en una variable. 
        Podemos hacer esto envolviendo el comando en un signo de dólar y paréntesis ($( )) alrededor de un comando. 
        Esta sintaxis se llama sustitución de comandos.
    * (10) Los nombres de variables con un signo ($) también se pueden usar dentro de otras cadenas para insertar el valor de la variable en la cadena.
    * (11) Su secuencia de comandos puede aceptar argumentos como un programa de línea de comandos:
        - El primer argumento de su secuencia de comandos se almacena en $1.
        - El segundo argumento se almacena en $2, etc., etc.
        - Una matriz de todos los argumentos pasados a su secuencia de comandos se almacena en $@.
        - El número total de argumentos pasados a su secuencia de comandos se almacena en $#.
comment


# * (3)
chapter_number=5


# * (5)
chapter_number = 5
## Error in running command bash


# * (6)
echo $chapter_number
## 5


# * (7)
let chapter_number=$chapter_number+1
echo $chapter_number
## 6


# * (8)
the_empire_state="New York"
echo $the_empire_state
## New York


# * (9)
math_lines=$(cat math.sh | wc -l)
echo $math_lines
## 7


# * (10)
echo "I went to school in $the_empire_state."
## I went to school in New York.


# * (11)
echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"


#bash vars.sh

## Script arguments:
## First arg: . Second arg: .
## Number of arguments: 0


#bash vars.sh red

## Script arguments: red
## First arg: red. Second arg: .
## Number of arguments: 1


#bash vars.sh red blue

## Script arguments: red blue
## First arg: red. Second arg: blue.
## Number of arguments: 2


#bash vars.sh red blue green

## Script arguments: red blue green
## First arg: red. Second arg: blue.
## Number of arguments: 3