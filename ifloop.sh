#!/bin/bash
# File: ifloop.sh


# Nesting (if loops)


<< comment
    * Además de anidar bucles entre sí, también puede anidar bucles dentro de sentencias "if" y sentencias "if" dentro de bucles.
comment


for number in {1..10}
do
  if [[ $number -lt 3 ]] || [[ $number -gt 8 ]]
  then
    echo $number
  fi
done

## 1
## 2
## 9
## 10