#referer:https://www.seplus.jp/dokushuzemi/blog/2021/09/shellscript_practices.html#i-5
#おみくじを引いた結果を表示するシェルスクリプトを作成してくださ い。各結果の確率は以下のようにします。
#おみくじの結果の確率
#大吉10 %
#中吉20 %
#吉40 %
#凶20 %
#大凶10 %
#
#array
omikuji=(
"大吉!"
"中吉"
"中吉"
"吉"
"吉"
"吉"
"吉"
"凶"
"凶"
"大凶")

#use RANDOM function
i=$(($RANDOM % 10))

#print
echo ${omikuji[i]}
