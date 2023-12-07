#! /bin/bash
# 


read -p "kindly provide name which are present in the list: " name

if [ -z "$name" ]; then
   echo "you have not provided any name"
   exit
   fi

for i in {deepak,antony,jyoti,abhishek,samiskha}
do  
   if [  "$name" == "$i" ]; then
   echo " Provided name $name  present in list $i "
   break
   else
echo " you have provided the name $name which is not present  in list $i"
   fi

done




