#
#
#if文を使用し、実行時点の「午前、午後」の判別を行うスクリプトを作成せよ。
#
#
#
#/bin/bash
#
#var
hour=`date "+%H"`
hourGMT=`expr $hour + 9`

#echo $hour
#echo $hourGMT

#AM
if [ $hourGMT -lt 12 ]; then 
	echo "It's AM"
	exit
#PM
elif [ $hourGMT -ge 12 ]; then 
	echo "It's PM"
	exit
fi

