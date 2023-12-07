#!/bin/bash
# this script will make us to do the sum,div,Mul,Sub of 2 numbers
 
read -p "Enter first number: " num1
read -p "Enter second number: " num2 

echo " type "1" for addition of 2 number"
echo " type "2" for Subtration of 2 number"
echo " type "3" for Division of 2 number"
echo " type "4" for Multiplication of 2 number"

read choice

case $choice in

   1)
      sum=$(( $num1 + $num2 ))
      echo "Sum of number is: $sum"
      ;;
    2)
      Sub=$(( $num1 - $num2 ))
      echo "Sub of number is: $Sub"
      ;;
    3)
      Div=$(( $num1 / $num2 ))
      echo "Div of number is: $Div"
      ;;
    4) 
      Mul=$(( $num1 * $num2 ))
      echo "Mul of number is: $Mul"
      ;;

esac




