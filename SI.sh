#! /bin/bash
#This Script will provide us the SI calculation with Surcharges

read -p "kindly provide your name: "  name
if [ -z "$name" ]; then
echo "you have not provided any name, kindly provide any name"
   exit
fi  
echo " Hi "$name" , thanks for choosing  our app. please proceed ahead "

read -p "Provide the Principle: "  principle

if [ -z "$principle"  ]; then
echo "you have not provided any principle"
   exit
fi   
read -p "Provide the Rate of interest: "  rate
if [ -z "$rate"  ]; then
echo "you have not provided any rate of interest"
   exit
fi   
read -p "Provide the no of years: "  year
if [ -z "$year"  ]; then
echo "you have not provided no of years "
   exit
fi

var=100
results=$(( (( $principle *  $rate *  $year ))  / $var ))

if [ $results -gt 1000 ]; then
   echo " HI $name your SI result $results is greater than 1000, so additional surcharge of Rs 500 is imposed "
results=$(( $results + 500 )) 
   echo " Final result is $results " 
elif [ $results -gt 500 -a $results -lt 1000 ]; then
   echo " HI $name your SI result $results is greater than 500, so additional surcharge of Rs 100 is imposed "
   results=$(( $results + 100 ))  
   echo " Final result is $results "
else 
   echo " HI $name your SI result $results is less than 500, so no additional surcharge is imposed "
   echo " Final result is $results "
fi 

