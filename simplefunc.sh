#!/bin/bash
# File: simplefunc.sh


# Writing Functions


<< comment
    * Una función es una pequeña pieza de código que tiene un nombre. 
    * Las funciones de escritura nos permiten reutilizar el mismo código varias veces en todos los programas. 
    * (3) Las funciones tienen la siguiente sintaxis:
        - La estructura completa de la función, incluida la palabra clave de la función, el nombre de la función 
            y el código de la función escrito dentro de los corchetes sirve como definición de la función. 
        - La definición de función asigna el código dentro de la función al nombre de la función (hola en este caso). 
        - Después de definir una función, se puede usar como cualquier otro comando. 
        - Usar nuestro comando hello tres veces debería ser el equivalente a usar echo "Hello" tres veces. 
comment


# * (3)
function hello {
    # code here
    echo "Hello"
}

hello
hello
hello

## Hello
## Hello
## Hello