#while文を使用し、入力された値をデクリメントしながら表示し、
#5になった時点で終了するスクリプトを作成せよ。
#
#5未満の入力はエラーメッセージを表示すること。
#
#
#
#/bin/bash
#
#
#
#def
input=0

#read the number user pressed
read -p "Press the any number, but higher than 5: " input

if [ $input -gt 5 ]; then 
#if [ $input -ge 5 ]; then 
	echo "Start degree the number until 5." 

	while [ $input -gt 5 ]; do
	#while [ $input -ge 5 ]; do
		input=`expr $input - 1`
		echo "$input"
		sleep 1
	done
else
#else [ $input -lt 5 ]; then
	echo "Do not need to degree the number. It's same or lower than 5."
fi

