#! /bin/bash
# This script will provide the file name and it executablity

for i in ./*
do 
   if [ -x "$i" ]; then
   echo " this "$i" file is executable "
   else
   echo " this "$i" file is not executable " 
   fi
done

for i in ( 1,2,nonstop )
do 
   if [ $i== nonstop ]; then
   echo " this "$i" came to nonstop "
  break
   fi
done