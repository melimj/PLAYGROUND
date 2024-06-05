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

echo $hour

#AM
if [ $hour -lt 12 ]; then 
	echo "It's AM"
	exit
#PM
elif [ $hour -ge 12 ]; then 
	echo "It's PM"
	exit
fi

