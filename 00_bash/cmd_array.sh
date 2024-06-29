#/bin/bash
#
#
##array
array=("a" "b" "c" "d" "e")

#print c
echo ${array[2]}

#print bad
echo ${array[1]}${array[0]}${array[3]}
