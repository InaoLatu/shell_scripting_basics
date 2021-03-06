#!/bin/bash 

# Print the first argument
	echo "1st Argument : $1"
	
	sum=0
	
	# $# tells you the number of arguments
	while [[ $# -gt 0 ]]; do
	
		# Get the first argument
		num=$1
		sum=$((sum + num))
		
		# shift moves the value of $2 into $1 until none are left
		# The value of $# decrements as well
		shift
	done
	
	echo "Sum : $sum"