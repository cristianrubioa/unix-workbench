#!/bin/bash
# File: letsread.sh


# User Input


<< comment
    * Si está creando programas para usted o para que otros los usen, una forma en que puede obtener 
        la entrada del usuario es especificar argumentos para que los usuarios proporcionen a su programa.
    * read: almacena una cadena que el usuario proporciona en una variable.
comment


echo "Type in a string and then press Enter:"
read response
echo "You entered: $response"

## Type in a string and then press Enter:
## Hello!
## You entered: Hello!