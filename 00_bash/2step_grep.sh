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


#########################################
#SEARCH the logfile

read -p "Enter the server name: " logserver 
read -p "Enter the YYYYMMDDHH: " logdate
read -p "Enter the warname: " logwar

#log
Log=$logdir/$logserver/$logdate$logwar"_app.log"
echo $Log

if [ -f $Log ]; then
	echo "
	START GREP: $Log" 
else
	echo "
	There's no file: $Log"
	exit
fi

#########################################
#1st GREP
#

read -p "
Enter the 1st grep key: " grepkey
#echo $grepkey

grep -a "$grepkey" $Log > $tmpout
#echo "$tmpout" 


########################################
#2nd GREP
#

