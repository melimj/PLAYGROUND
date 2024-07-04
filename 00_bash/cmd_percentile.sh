#99.0%TILE by awk command
#
#
#inputFile:
input=/home/ec2-user/PLAYGROUND/98_input/execTime.csv
#
#outputFile:
outputAVE=/home/ec2-user/PLAYGROUND/97_output/Ave_execTime.csv
output99per=/home/ec2-user/PLAYGROUND/97_output/99per_execTime.csv
output95per=/home/ec2-user/PLAYGROUND/97_output/95per_execTime.csv
output50per=/home/ec2-user/PLAYGROUND/97_output/50per_execTime.csv

#
#echo "$input" 
#echo "$output"
#
#
# Calculate Average (Mean)
cat $input | cut -d' ' -f3 | sort -n | awk 'BEGIN{t=0}{t=t+$0}END{print t/NR}' > $outputAVE

# 99th percentile - input should be pre-sorted. -0.5 here forces a round down
cat $input | cut -d' ' -f3 | sort -n | awk '{all[NR] = $0} END{print all[int(NR*0.99 - 0.5)]}' > $output99per

# 95th percentile - input should be pre-sorted. -0.5 here forces a round down
cat $input | cut -d' ' -f3 | sort -n | awk '{all[NR] = $0} END{print all[int(NR*0.95 - 0.5)]}' > $output95per

# Median, also known as the 50th percentile. Input should be pre-sorted
cat $input | cut -d' ' -f3 | sort -n | awk '{all[NR] = $0} END{print all[int(NR*0.5 - 0.5)]}' > $output50per


#print result
#
echo "AVERAGE:" && cat $outputAVE
echo "99percentile:" && cat $output99per
echo "99percentile:" && cat $output95per
echo "99percentile:" && cat $output50per

#
