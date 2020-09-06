#!/bin/bash

getDate(){
	date
	return
}

getDate

name="Inao"
demLocal(){
	local name="Pepe"
	echo $name
	return
}
demLocal
echo $name

getSum(){
	local n3=$1
	local n4=$2
	local n5=$3

	local sum=$((n3+n4))
	echo $sum 
}

sum=$(getSum 3 4 5)
echo $sum