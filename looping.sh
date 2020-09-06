# Looping 
#!/bin/bash 
 num=1 
# while loop
 while [ $num -le 10 ]; do
 	echo $num
 	((num++))

 done

 while [[ $num -le 20 ]]; do
 	if (( ((num % 2)) == 0 )); then 
 		((num++))
 		continue
 	fi	

 	if ((num >= 15)); then
 		break 
 	fi 

 	echo $num
 	((num++))

 done

until [ $num -gt 15 ]; do
	echo $num
	num=$((num+2))	#statements
done

for (( i=0; i<=10; i=i+1)); do 
	echo $i
done 

for i in {A..Z}; do 
	echo $i 
done