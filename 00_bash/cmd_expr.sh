#/bin/bash

#変数を3つ使用し、四則演算の減算を行うスクリプトを作成せよ。
#変数は a=10 、 b=5 、cには a-b の結果を格納すること

#var
a=10
b=5
c=`expr $a - $b`
d=`expr $a '/' $b`
e=`expr $a % $b`
f=`expr $a '*' $b`
i=`echo "($a*$b)"`
g=`expr $a * $b`
h=`expr $a / $b`
j=`expr $a + $b`

#print
echo "10 + 5=$j"
echo "10 - 5=$c"

echo "10 % 5=$e"

echo "10 / 5=$h"
echo "10 '/' 5=$d"

echo "10 '*' 5=$f"
echo "(10*5)=$i"
#print_err
echo "10 * 5=$g   #error"
