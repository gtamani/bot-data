#!/bin/bash
exho $PATH
echo $1


function upload(){
	git add .  
	if [[ $? == 0 ]]; then
		date +%Y%m%d-%H:%M:%S | xargs git commit -m 
		if [[ $? == 0 ]]; then
			echo "push"
			git push
			date +%D >> done.txt
		fi
	fi
}

upload
