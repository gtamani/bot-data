#!/bin/bash
export PATH="/home/ubuntu/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
echo $PATH
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
