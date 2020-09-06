#!/bin/bash 
fav_nums=(3 56 4.3 5.0)

echo "first: ${fav_nums[0]}"

fav_nums[4]=1234

fav_nums+=(1 7)  # add the 1 and 7 to the array

for i in ${fav_nums[*]}; do # with *, the values within the array are picked 
	echo $i
done 

for i in ${!fav_nums[@]}; do 
	echo $i
done 


echo "Array length: ${#fav_nums[@]}"

# Get length of array element
	echo "Index 3 length : ${#fav_nums[3]}"