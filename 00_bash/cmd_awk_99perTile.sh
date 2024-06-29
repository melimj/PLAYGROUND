#99.0%TILE by awk command
#
#
#inputFile:
input=/home/ec2-user/PLAYGROUND/98_input/execTime.csv
#
#outputDir:
output=/home/ec2-user/PLAYGROUND/97_output/
#
#echo "$input" 
#echo "$output"
#
#
cat $input | cut -d' ' -f3 | sort -n | awk 'BEGIN{c=0} length($0){a[c]=$0;c++] END{pt=(c/100*(100-99)); pt=pt%1?int(pt-0.5)+1:pt; print a[c-pt-1]}' >> $output/execTime_awk99perTile.csv
