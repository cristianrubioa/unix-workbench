#!/bin/bash
# File: exercises2.sh


# Writing Programs Exercises 


<< comment
    * (1) Write a program called range that takes one number as an argument and prints all of the numbers between that number and 0.
    * (2) Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.
comment


# * (1)
function range {
    local number=$1

    if [[ $number =~ ^\- ]]
    then
        eval echo {$number..0}
    else
        eval echo {0..$number}
    fi
  
}


# * (2)
function extremes {
    local min=`printf "%s\n" "$@" | sort -g | head -1`
    local max=`printf "%s\n" "$@" | sort -g | tail -1`
    echo $min $max
}



# * (1)
range 6
## 0 1 2 3 4 5 6

range -3
## -3 -2 -1 0


# * (2)
extremes 8 2 9 4 0 3
## 0 9