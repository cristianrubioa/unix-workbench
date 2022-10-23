#!/bin/bash
# File: condexec.sh


# Conditional Execution


<< comment
    * (1) Bash proporciona mecanismos para crear expresiones lógicas que se asemejan a ecuaciones matemáticas. 
        Estas expresiones lógicas se pueden evaluar hasta que sean verdaderas o falsas. 
        De hecho, ¡true y false son comandos simples de Bash!.
    * Cada vez que ejecuta un programa en la línea de comando, en general sucederá una de dos cosas: 
        - El comando se ejecuta correctamente.
        - (2.2) Se genera un error.
            Dado que ese comando no existe, crea un tipo específico de error que se indica en el estado de salida del programa.
    * (3) El estado de salida de la última ejecución del programa se almacena en la variable de signo de interrogación ($?).
        Este estado de salida en particular hizo una indicación al shell de que debería imprimir un mensaje de error en la consola.
    * (4) El estado de salida de un programa exitoso es 0.
    * (5) Los estados de salida de verdadero y falso:
        - true tiene un estado de salida de 0 y false tiene un estado de salida de 1.
    * (6) Los operadores AND (&&) y OR (||) se pueden utilizar para la ejecución condicional de programas en la línea de comandos.
        La ejecución condicional ocurre cuando la ejecución de un programa depende del estado de salida de otro programa.
        Dado que falso tiene un estado de salida de 1, el mensaje "Program 2 was executed", no se ejecuta.
    * (7) En una serie de programas unidos por operadores AND (&&), no se ejecuta ningún programa
        a la derecha de un programa que tenga un estado de salida distinto de cero.
    * (8) El operador OR (||) sigue un conjunto similar de principios. Comandos en el lado derecho de || solo se ejecutan si el comando
        del lado izquierdo falla y, por lo tanto, tiene un estado de salida distinto de 0.
comment


# * (1)
true
false


# * - (2.2)
this_command_does_not_exist
## Error in running command bash


# * (3)
echo $?
## 127


# * (4)
echo I will succeed.
echo $?
## I will succeed.
## 0 


# * (5)
true
echo $?
false
echo $?
## 0
## 1


# * (6)
true && echo "Program 1 was executed."
false && echo "Program 2 was executed."
## Program 1 was executed.


# * (7)
false && true && echo Hello
echo 1 && false && echo 3
echo Athos && echo Porthos && echo Aramis
## 1
## Athos
## Porthos
## Aramis


# * (8)
true || echo "Program 1 was executed."
false || echo "Program 2 was executed."
## Program 2 was executed.