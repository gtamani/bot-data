#!/bin/bash


# Hay que tener en cuenta que crontab utiliza el la shell SH, a diferencia de los entornos de escritorio que suelen utilizar BASH.
# En SH, el simbolo % tiene que escaparse
export PATH="/home/ubuntu/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
echo $PATH > logs.txt
echo $1 >> logs.txt


git add .
echo 'added' >> logs.txt
if [[ $? == 0 ]]; then
	date '+\%Y\%m\%d-\%H:\%M:\%S' | xargs git commit -m
	if [[ $? == 0 ]]; then
		echo "push"
		git push
		date +%D >> done.txt
	fi
fi


