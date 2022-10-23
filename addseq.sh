#!/bin/bash
# File: addseq.sh


# Writing Functions (plus)


<< comment
    * Imagina que quisiéramos sumar una secuencia de números desde la línea de comando, 
        pero no tuviéramos forma de saber cuántos números habría en la secuencia.  
    * ¿Qué componentes necesitaríamos para escribir esta función? 
        - Necesitaríamos una forma de capturar una lista de argumentos que pueden tener una longitud variable. 
        - Necesitaríamos una forma de iterar a través de esa lista para poder sumar cada elemento.
        - Necesitaríamos una forma de almacenar la suma acumulada de los secuencia.  
    * Estos tres requisitos se pueden satisfacer usando la variable $@, un bucle "for" y una variable donde podemos almacenar la suma.
comment


function addseq {
  sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}


<< comment
    * En el programa anterior, inicializamos la variable de suma para que sea 0, de modo que podamos agregar otros valores en la secuencia para sumar. 
    * Luego usamos un bucle "for" para iterar a través de cada elemento de $@, que es una matriz de todos los argumentos que proporcionamos a addseq. 
    * Finalmente hacemos "echo" del valor de sum. 
    * En el comando anterior, proporcionamos una secuencia de números y luego el comando nos proporciona la suma de la secuencias.
comment


#addseq 12 90 3
#addseq 0 1 1 2 3 5 8 13
#addseq
#addseq 4 6 6 6 4

## 105
## 33
## 0
## 26
