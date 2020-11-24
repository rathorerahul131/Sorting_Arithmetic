#!/bin/bash

echo "Welcome to the sorting Arithmetic Computation Program"

echo "Enter the value of a "
read a

echo "Enter the value of b "
read b

echo "Enter the value of c "
read c

echo "The values of a,b,c are $a, $b, $c"

result1=$(( $a + $b * $c ))
echo "The output for the expression a+b*c is $result1"


result2=$(( $a * $b + $c ))
echo "The output for the expression a*b+c is $result2"

result3=$(( $c + $a / $b ))
echo "The output for the expression c+a/b is $result3"
