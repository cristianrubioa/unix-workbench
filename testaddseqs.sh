#!/bin/bash
# File: addseq2.sh


# Writing and Getting Values from Functions 


<< comment
    * (1) Cuando se crea variables en funciones, esas variables se vuelven accesibles globalmente, 
        lo que significa que incluso después de que finaliza el programa, esa variable conserva su valor en su shell.
        - (1.1) Probar despues de ejecutar el archivo addseq.sh.
    * (2) Ahora busquemos ambos archivos para demostrar cómo lo local nos ayuda a evitar sobrescribir variables.
    * (3) Nuestro addseq original sobrescribe el valor que le asignamos a sum. Ahora probemos addseq2.
    * (4) Al usar local dentro de nuestra función, ¡se conserva el valor de sum!. 
        Para capturar correctamente el valor del resultado de addseq2 podemos usar la sustitución de comandos.
comment


# * (1)
source addseq.sh
addseq 3 0 0 7
## 10


# * - (1.1)
# echo $sum
## 10


# * (2)
source addseq.sh
source addseq2.sh
sum=4444
addseq 5 10 15 20
echo $sum
## 50
## 50


# * (3)
sum=4444
addseq2 5 10 15 20
echo $sum
## 50
## 4444


# * (4)
my_sum=$(addseq2 5 10 15 20)
echo $my_sum
## 50
