#!/bin/bash
# File: whileloop.sh


# While


<< comment
    * El ciclo "while" es verdaderamente la Taza de mantequilla de maní de Reese de 
        estructuras de programación, combinando partes del ciclo "for" y la instrucción "if". 
    * (2) El bucle "while" comienza primero con la palabra clave while seguida de una expresión condicional. 
        - Siempre que la expresión condicional sea equivalente a verdadera cuando comience una iteración del ciclo, 
            el código dentro del ciclo "while" continuará ejecutándose.
        - El código ejecutado en cada iteración del bucle se escribe entre "do" y "done".
comment


# * (2)
count=3

while [[ $count -gt 0 ]]
do
  echo "count is equal to $count"
  let count=$count-1
done

## count is equal to 3
## count is equal to 2
## count is equal to 1


