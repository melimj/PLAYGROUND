#/bin/bash

#変数を3つ使用し、四則演算の減算を行うスクリプトを作成せよ。
#変数は a=10 、 b=5 、cには a-b の結果を格納すること

#var
a=10
b=5
c=`expr $a - $b`
d=`expr $a / $b`
e=`expr $a % $b`
f=`expr $a*$b`
g=`expr $a * $b`
h=`expr $a // $b`

i=`echo "($a * $b)"`

#print
echo $c 
echo $d
echo $e
echo $f

echo $i

#print_err
echo $g
echo $h
