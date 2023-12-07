#! /bin/bash
# this script  will provide us the  details of the file or directory

read -p "kindly provide the file or directory name: " file

if [ -e $file ]; then 
   echo " $file file exist "
fi

if [ ! -e $file ]; then 
   echo " $file file does not exist "
   exit
fi

if [ -d $file ];  then
   echo  " $file directory exist "
else
   echo " $file is not a directory "   
fi
 

if [ -r $file ]; then
   echo " $file is readable "
else
   echo " $file is not readble "
fi

if [ -w $file ]; then
   echo " $file is writable "
else
   echo " $file is not writable "
fi
 
if [ -x $file ]; then
   echo " $file is executable "
else
   echo " $file is not executable "
fi
