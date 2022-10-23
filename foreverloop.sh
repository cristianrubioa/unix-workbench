#!/bin/bash
# File: foreverloop.sh


# While (infite loop)


<< comment
    * Si la expresión lógica nunca es equivalente a false, hemos creado un ciclo infinito, 
        por lo que el ciclo nunca termina y el programa se ejecuta para siempre.
    * Cuando construya bucles "while", asegúrese absolutamente de haber estructurado el programa para que el bucle termine.
comment


count=3

while [[ $count -gt 0 ]]
do
  echo "count is equal to $count"
  let count=$count+1              # We only changed this line!
done

## ...
## count is equal to 29026
## count is equal to 29027
## count is equal to 29028
## count is equal to 29029
## count is equal to 29030
## ...