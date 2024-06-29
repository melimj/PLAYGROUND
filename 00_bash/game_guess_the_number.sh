#変数numを乱数で宣言し、入力した値が同じになるまで繰り返すスクリプトを作成せよ。
#while文を使用すること。
#入力値が乱数より大きいか小さいかを表示させること
#
#
#
#/bin/bash
#
#
#
randomNum=`expr $RANDOM % 10`
#echo "$randomNum"
#
#
#notice
echo "Welcome, let's play the game of guessing the number."
echo "When you want to exit the game, enter the "99"." 

#while : do done 
while : 
do
	read -p "Enter any number 0~10 :" input

	if [ $input = 99 ]; then
		echo "bye" 
		break

	#equal the number
	elif [ $input = $randomNum ]; then
		echo "You got it!"
		break

	#lower than the number, you got hint
	elif [ $input -gt $randomNum ]; then
		echo "The number is more lower"
		#input=0

	#higher than the number, you got another hint
	elif [ $input -lt $randomNum ]; then
		echo "The number is more higher"
		#input=0

	fi
done

