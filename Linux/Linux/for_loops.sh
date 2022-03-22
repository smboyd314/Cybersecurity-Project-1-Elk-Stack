#!/bin/bash

#for <item> in <list>;
#do
#       <run this command>
#       <run this command>
#done

states=('california' 'missouri' 'illinois' 'florida' 'hawaii')

for state in ${states[@]}
do
	if [ $state = 'hawaii' ]

	then
		echo "Hawaii is the best!"
	else
		echo "I'm not fond of Hawaii"
fi
done

#Create a loop that prints 3, 5, or 7

numbers=(0 1 2 3 4 5 6 7 8 9);

for number in ${numbers[@]}
do
	if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
then
	echo $number
fi
done



#Create a for loop that prints out each item in your variable that holds the output of the ls command.

ls_out=$(ls)

execs=$(fine /home -type f -perm 777 2> /dev/null)

for x in ${ls_out[@]}
do
	echo $x
done

#for exec in ${execs[@]}
