#/bin/bash
#
#
#
#use "dirname"

echo $0
#echo dirname $0
#echo bashname $0

echo `pwd`
echo $(cd $(dirname $0) && pwd)
