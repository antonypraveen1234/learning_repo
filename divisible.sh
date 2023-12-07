#! /bin/bash
#This script will make a divisible of 2,3,5,7,11,13,19 for reminder 0 number

divisible() {
     local num=$1
     echo " you wrote a number $num "

for i in {2,3,5,7,9,11,13,19}
do 
     if [ $(( $num%$i)) -eq 0 ]; then 
     echo " the number is divisible by $i "
     fi
done 
}

read -p " kindly provide a number and check is that can be divisible by prime number from 2 to 19: " prime

divisible $prime
