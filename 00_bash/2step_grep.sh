#/bin/bash
#
#
#
#
#########################################
#VAR

dir=/home/ec2-user/PLAYGROUND
logdir=$dir/98_input
tmpout=$dir/97_output/tmpout.txt

dirdate=`date +%Y%m%d%H%M%S`
tmpoutdir=$dir/97_output/$dirdate"_result"

#########################################



#########################################
#SEARCH the logfile

read -p "Enter the server name: " logserver 
read -p "Enter the YYYYMMDDHH: " logdate
read -p "Enter the warname: " logwar

#log
Log="$logdir"/"$logserver"/"$logdate$logwar""_app.log"
#echo "$Log"

#if bash -f : can't use wildcard(*)
ls "$Log" >/dev/null 2>&1
if [ $? -ne 0 ]; then
	# 存在
	echo "
START GREP: "$Log""
else
  	echo "
There's no file, EXIT"
	exit
fi

#if [ -e "$Log" ]; then
	#echo "
	#START GREP" 
#else
	#echo "
	#There's no file"
#	exit
#fi

#########################################
#removed resultfile

if [ -e $tmpout ]; then
	rm -f $tmpout
fi

#########################################
#1st GREP
#

read -p "
Enter the 1st grep key: " grepkey
#echo $grepkey

#if [[ $grepkey == *'*'* ]]; then
grep -a "$grepkey" $Log > $tmpout

#echo "$tmpout" 


########################################
#result_dir

#echo $tmpoutdir

ls $tmpoutdir >/dev/null 2>&1
if [ $? -ne 0 ];then
	#echo $tmpoutdir
	mkdir $tmpoutdir
	echo "resultFile in : $tmpoutdir"
else
	echo "resultFile in : $tmpoutdir"
fi


########################################
#grepPath=`cat $tmpout | cut -d' ' -f1 | cut -d':' -f1`
#grepReqId=`cat $tmpout | cut -d' ' -f1 | cut -d':' -f2`

#2nd GREP funtion

onefile() {
	while read line; do
		grepReqId1=`echo $line | cut -d' ' -f1`
	
		grep -aw ^"$grepReqId1" $Log >> $tmpoutdir/result_$grepReqId1.txt
	done < $tmpout
}	


files() {
	while read line; do
		grepPath=`echo $line | cut -d' ' -f1 | cut -d':' -f1`
		grepReqId=`echo $line | cut -d' ' -f1 | cut -d':' -f2`
	
		#echo "grep -aw ^$grepReqId $grepPath"
		grep -aw ^"$grepReqId" $grepPath >> $tmpoutdir/result_$grepReqId.txt
	done < $tmpout
}


#######################################
#2nd GREP

areThey=`ls $Log | wc -l`

if [ $areThey -eq 1 ]; then

	#read onefile function
	onefile
else

	#read files function
	files
fi



