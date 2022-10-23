#!/bin/bash
# File: nested.sh


# If and Else (nested)


<< comment
    * Debemos tener en cuenta que las declaraciones if/elif/else se pueden anidar dentro de otras declaraciones "if".
comment


if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
  if [[ $1 -eq 4 ]]
  then
    echo "four"
  elif [[ $1 -eq 5 ]]
  then
    echo "five"
  else
    echo "six"
  fi
else
  echo "You entered: $1, not what I was looking for."
fi

#bash nested.sh 2
#bash nested.sh 4
#bash nested.sh 6

## You entered: 2, not what I was looking for.
## four
## six