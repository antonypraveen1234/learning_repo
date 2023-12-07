#! /bin/bash

# this script will let us know are we young or getting old

read -p "kindly provide name: "  name
read -p "kindly provide your age: " age

if [ -z $name ]; then
   echo "you have not provided any name"
   exit
elif [ -z $age ]; then
   echo "you have not provided any age"
   exit
fi

if [ "$age" -gt 0 -a "$age" -lt 30 ]; then 
   echo " Hi "$name" you are very young "
elif [ "$age" -gt 30 -a "$age" -lt 50 ]; then
   echo " Hi "$name" you are getting older "
elif [ "$age" -gt 50 -a "$age" -lt 80 ]; then
   echo " Hi "$name" you are old "
else 
   echo " HI "$name" kindly provide valid age details from 0 to 80 "
fi

  
