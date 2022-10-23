#!/bin/bash
# File: bigmath.sh


# Math


<< comment
    * Para realizar operaciones matemáticas más complejas, por ejemplo: 
        operaciones matemáticas con fracciones y números con decimales, se sugiere
        que combinar echo y el programa de cálculo de banco llamado "bc" (bench calculator). 
    * Puede canalizar cualquier cadena matemática a "bc" con el indicador -l 
        para usar números decimales en sus cálculos.
comment


echo "22 / 7" | bc -l
echo "4.2 * 9.15" | bc -l
echo "(6.5 / 0.5) + (6 * 2.2)" | bc -l

## 3.14285714285714285714
## 38.430
## 26.20000000000000000000
