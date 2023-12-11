#!/bin/bash

declare -A map

map["origin"]="test1"
map["origin"]="test2"

#git init
#git checkout feature
git add agu.txt
git commit -m "agu committed"

for i in "${!map[@]}"
do
#	git remote add $i git clone https://github.com/gopal106/${map[$i]}.git
	git push -u $i feature
done
