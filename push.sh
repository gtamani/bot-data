#!/bin/bash

echo $1


function upload(){
	git add .  
	if [[ $? == 0 ]]; then
		date +%Y-%m-%d | xargs git commit -m 
		if [[ $? == 0 ]]; then
			echo "push"
			git push
		fi
	fi
}

upload
