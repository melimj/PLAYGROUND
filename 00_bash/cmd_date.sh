#現在の日時と時間を表示するスクリプトを作成せよ。
#日、月、年、時間の順で表示させること。
#日、月、年、時間の間には、「、」を表示させること。
#
#
#
#
#/bin/bash
#
#
#var
#echo "$date"
#echo "$time"

date "+%d,%m,%y,%T JST"

date "+%dd,%mm,%Y,%T JST"

date "+%Y/%m/%d %T JST"

date "+%Y %m %d %T JST"

date "+%Y%m%d%H%M%S"
