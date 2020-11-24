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

result4=$(( $a % $b + $c ))
echo "The output for the expression a%b+c is $result4"

# Created a dictionary named All_Results to store all the results
declare -A All_Results

for ((i=1;i<5;i++))
do
	All_Results["result"$i]=$((result$i))
done

echo "All the results are ${All_Results[@]}"