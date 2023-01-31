#!/bin/bash

# https://www.cyberciti.biz/faq/bash-for-loop/

for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done
# -----------------------------------------------
for i in {1..5}
do
   echo "Welcome $i times"
done
# -----------------------------------------------
for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done
# -----------------------------------------------
echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
do
  echo "Welcome $i times"
done
# -----------------------------------------------
# set counter 'c' to 1 and condition 
# c is less than or equal to 5
for (( c=1; c<=5; c++ ))
do 
   echo "Welcome $c times"
done
# -----------------------------------------------


# loop over directories:
for dir in */; do
    echo "$dir"
done