#!/bin/bash
# File: exercises1.sh


# Functions Exercies 


<< comment
    * (1) Write a function called plier which multiplies together a sequence of numbers.
    * (2) Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.
    * (3) Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.
    * (4) Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.
    * (5) Write a function called fib which prints the number of fibonacci numbers specified.
comment


# * (1)
function plier {
  local mult=1

  for element in $@
  do
    let mult=mult*$element
  done

  echo $mult
}


# * (2)
function isiteven {
  local number=$1

  if [ $((number%2)) -eq 0 ]
  #if [[ `expr $number%2` -eq 0 ]]
  then
    echo 1
  else
    echo 0
  fi
}


# * (3)
function nevens {
  local even_number=0

  for element in $@
  do
    if [ $((element%2)) -eq 0 ]
    then
      let even_number=even_number+1
    fi
  done

  echo $even_number
}


# * (4)
function howodd {
  total_args=${#@}
  total_evens=`nevens $@`
  let total_odd=total_args-total_evens
  
  echo $total_odd/$total_args | bc -l
}



# * (5)
function fib {
  local a=0
  local b=1
  local N=$1

  for (( i=0; i<N; i++ ))
  do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
  done
  
  echo ""
}



# * (1)
plier 7 2 3
## 42


# * (2)
isiteven 42
## 1


# * (3)
nevens 42 6 7 9 33
## 2


# * (4)
howodd 42 6 7 9 33
## .60


# * (5)
fib 4
## 0 1 1 2

fib 10
## 0 1 1 2 3 5 8 13 21 34