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

for ((i=0;i<4;i++))
do
	All_Results["result"$i]=$((result$((i+1))))
done

echo All the results are: ${All_Results[@]}

# sizeOfAll_Results variable stores the size of dictionary All_Results

sizeOfAll_Results=${#All_Results[@]}


# Created an array name Result_Array to read from Dictionary and store into array
# Looping through all the values of dictionary and storing the in an array

for ((i=0;i<$sizeOfAll_Results;i++))
do
	Result_Array[i]=${All_Results[result$i]}
done

#printing the Array values
echo Array values are : ${Result_Array[@]}

#storing the length of Result_Array

length=${#Result_Array[@]}

# Sorting the array in Descending oreder using Bubble Sort
for ((i = 0; i<$length; i++)) 
do
      
    for((j = 0; j<$(($length-i-1)); j++)) 
    do
      
        if [ ${Result_Array[j]} -lt ${Result_Array[$((j+1))]} ] 
        then
            # swap 
            temp=${Result_Array[j]} 
            Result_Array[$j]=${Result_Array[$((j+1))]}   
            Result_Array[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array values in Ascending order is :"
echo ${Result_Array[@]}

# Sorting the array in Ascending oreder using Bubble Sort
for ((i = 0; i<$length; i++)) 
do
      
    for((j = 0; j<$(($length-i-1)); j++)) 
    do
      
        if [ ${Result_Array[j]} -gt ${Result_Array[$((j+1))]} ] 
        then
            # swap 
            temp=${Result_Array[j]} 
            Result_Array[$j]=${Result_Array[$((j+1))]}   
            Result_Array[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array values in Ascending order is :"
echo ${Result_Array[@]}
