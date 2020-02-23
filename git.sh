#!/bin/bash

echo 1 >> 1.txt
git add .

for number in $(seq 1200 1500 | shuf | tail -n 1);do
	git commit --date "$number day ago" -m "bugfix" .
       
done      

echo "--------------commit done on $number day's ago!-----------------"
