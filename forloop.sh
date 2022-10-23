#!/bin/bash
# File: forloop.sh


# For


<< comment
    * Los bucles son una de las estructuras de programación más importantes del lenguaje Bash.
    * Todos los programas que hemos escrito hasta ahora se ejecutan desde la primera línea del script hasta la última línea, 
        pero los bucles le permiten repetir líneas de código en función de condiciones lógicas o siguiendo una secuencia. 
    * (3) Los bucles "for" iteran a través de cada elemento de una secuencia que especifique.
        - Los bucles FOR comienzan con la sintaxis de [nombre de la variable] in [secuencia] seguida de do en la línea siguiente. 
        - Las secuencias válidas incluyen expansiones de llaves, listas explícitas de cadenas, matrices y sustituciones de comandos. 
        - El código ejecutado en cada iteración del bucle se escribe entre "do" y "done".
comment


# * (3)
echo "Before Loop"

for i in {1..3}
do
    echo "i is equal to $i"
done

echo "After Loop"

## Before Loop
## i is equal to 1
## i is equal to 2
## i is equal to 3
## After Loop