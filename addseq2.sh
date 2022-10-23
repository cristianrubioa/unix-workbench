#!/bin/bash
# File: addseq2.sh


# Getting Values from Functions


<< comment
    * Las funciones se utilizan para dos propósitos principales: calcular valores y efectos secundarios.
    *  Un efecto secundario ocurre cada vez que una función crea o cambia archivos en nuestra computadora. 
        Estos comandos no imprimen ningún valor si tienen éxito.
    * A menudo escribiremos funciones para calcular algún valor, y es importante entender cómo almacenar 
        el resultado de una función en una variable para que pueda usarse más tarde.
    * Utilice la palabra clave local para evitar que su función cree o modifique variables globales.
    * Asegúrese de hacer "echo" de los resultados de su función (si los hay) para que puedan capturarse con la sustitución de comandos.
comment


function addseq2 {
  local sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}


