#!/bin/bash 

read -p "what is your name? " name 
echo "Hello $name"	

read -p "age? " age 
if [ $age -ge 16 ]
then 
	echo "You can drive"
elif [ $age -eq 15 ]
then 
	echo "driver next year"
else 
	echo "you can't drive"
fi 

# eq ne le lt ge gt : equal, not equal, less or equal,
# greater or equal, greater than 

read -p "Enter a number: " num

if ((num==10)); then 
	echo "num = 10"
fi 

if (( ((num%2)) == 0)); then
	echo "even"
else 
	echo "odd"
fi
# &&:and  ||:or 
if (( ((num>0)) && ((num<10)) ))
then
	echo "$num is positive smaller than 10"
fi 

subl samp_file
# -d to test if the given directory exists or not.
[ -d samp_dir ] || mkdir samp_dir  # if does not exist samp_dir is created


str1=""
str2="a"
str3="bb"

if [ "$str1" ]; then
	echo "str1 not null"
fi 

# -z string True if the string is null (an empty string)
if [ -z "$str1" ]; then
	echo "str1 is null"
fi 

if [ "$str2" == "$str3" ]; then
	echo "both equal"
fi 

if [ "$str2" != "$str3" ]; then
	echo "not equal"
fi 

# Check the files exist 
file1="./file1.txt"

	if [ -e "$file1" ]; then
		echo "$file1 exists"
		
		if [ -f "$file1" ]; then
			echo "$file1 is a normal file"
		fi
		
		if [ -r "$file1" ]; then
			echo "$file1 is readable"
		fi
		
		if [ -w "$file1" ]; then
			echo "$file1 is writable"
		fi
		
		if [ -x "$file1" ]; then
			echo "$file1 is executable"
		fi
		
		if [ -d "$file1" ]; then
			echo "$file1 is a directory"
		fi
		
		if [ -L "$file1" ]; then
			echo "$file1 is a symbolic link"
		fi
		
		if [ -p "$file1" ]; then
			echo "$file1 is a named pipe"
		fi
		
		if [ -S "$file1" ]; then
			echo "$file1 is a network socket"
		fi
		
		if [ -G "$file1" ]; then
			echo "$file1 is owned by the group"
		fi
		
		if [ -O "$file1" ]; then
			echo "$file1 is owned by the userid"
		fi
	else 
		echo "file does not exist"	
	fi