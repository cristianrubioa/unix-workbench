#!/bin/bash
# File: nestedloops.sh


# Nesting (loops)


<< comment
    * Al igual que las declaraciones "if", los bucles "for" y "while" se pueden anidar entre sí. 
        En el siguiente ejemplo, un bucle "for" está anidado dentro de otro bucle "for".
    * (2) Además de anidar bucles entre sí, también puede anidar bucles dentro de sentencias "if" y sentencias "if" dentro de bucles.
comment


# * (2)
for number in {1..3}
do
  for letter in a b
  do
    echo "number is $number, letter is $letter"
  done
done

## number is 1, letter is a
## number is 1, letter is b
## number is 2, letter is a
## number is 2, letter is b
## number is 3, letter is a
## number is 3, letter is b

