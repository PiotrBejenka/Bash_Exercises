#!/usr/bin/env bash

main () {
	for (( i=0; i<${#1}; i++))
	do
		sum=$(( sum + ${1:i:1}**${#1} ))
	done

	if [ $sum -eq $1 ]
	then
		echo "true"
	else
		echo "false"
	fi
}

main "$@"

