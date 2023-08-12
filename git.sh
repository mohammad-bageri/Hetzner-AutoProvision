#!/bin/bash

echo 1 >> 1.txt
git add .

for number in $(seq 1 100 | shuf | tail -n 1);do
	git commit --date "$number day ago" -m "bugfix" .
       
done       
