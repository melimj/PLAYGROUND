#/bin/bash
#
#
#
#practice command of case
#
#
#
#strings, number, etc
#
#msg
msg_str="It's Alphabet"
msg_num="It's Number"
msg_etc="It's not Alphabet, neither Number"

#read when user press any key

read -p "press any key, just one: " input
#read -p "press any key, just one: " $input

#case~in~);;~esac
#
#case ${input} in
case "${input}" in
	[A-Za-z]) echo "$msg_str" ;;
	[0-9]) echo "$msg_num" ;;
	*) echo "$msg_etc" ;;
esac


