#!/bin/bash 

# Parameter Expansions and Strings 
rand_str="A random string"

echo "String Length : ${#rand_str}"
echo "${rand_str:2}"
echo "${rand_str:2:7}"
echo "${rand_str#*A }" # Shows everything after "A "